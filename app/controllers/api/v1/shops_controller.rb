class Api::V1::ShopsController < ApplicationController
  def index
    shops = Shop.all
    render json: shops
  end

  def show
    shop = Shop.find(params[:id])
    render json: shop
  end

  def create
    shop = Shop.create(name:"Sandwich Shop", balance: 0.0, sandwiches_per_second: 0)
    shop.seed
    render json: shop
  end

  def update
    shop = Shop.find(params[:id])
    shop.update(shop_params)
    if shop.save
      render json: {balance: shop.balance, worker_array: [Worker.find(1).cost, Worker.find(2).cost, Worker.find(3).cost], worker_one_cost: Worker.find(1).cost, worker_two_cost: Worker.find(2).cost, worker_three_cost: Worker.find(3).cost}
    else
      render json:{errors: shop.errors.full_messages}, status: 422
    end
  end

  def destroy
    shop = Shop.find(params[:id])
    shop.delete
    render json:{message: 'Shop successfully Closed.'}
  end

  private

  def shop_params
    # t.string "name"
    # t.integer "balance"
    params.permit(:name, :balance, :sandwiches_per_second)
  end
end
