class Api::V1::WorkersController < ApplicationController
  def index
    workers = Worker.all
    render json: workers
  end

  def show
    worker = Worker.find(params[:id])
    render json: worker
  end

  def update
    worker = Worker.find(params[:id])
    worker.update(worker_params)
    new_sps = worker.shop.sandwiches_per_second + worker.sandwiches_per_second_modifier
    if worker.save
      worker.shop.update(sandwiches_per_second: new_sps)
      render json: {id: worker.id, quantity: worker.quantity, cost: worker.cost, sandwiches_per_second_modifier: worker.sandwiches_per_second_modifier, shop_sps: worker.shop.sandwiches_per_second}
    else
      render json:{errors: worker.errors.full_messages}, status: 422
    end
  end

  def destroy
    worker = Worker.find(params[:id])
    worker.delete
    render json:{message: 'Worker successfully Fired.'}
  end

  private

  def worker_params
    # t.string :name
    # t.float :sandwiches_per_second_modifier
    # t.integer :quantity
    # t.integer :cost
    # t.integer :shop_id
    params.permit(:name, :sandwiches_per_second_modifier, :quantity, :cost, :shop_id)
  end
end
