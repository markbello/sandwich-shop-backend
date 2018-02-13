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
    if worker.save
      render json: worker
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
    # t.string "name"
    # t.integer "sandwiches"
    # t.integer "quantity"
    # t.integer "cost"
    # t.integer "interval"
    # t.integer "shop_id"
    params.permit(:name, :sandwiches, :quantity, :cost, :interval, :shop_id)
  end
end
