class Api::V1::ShopsController < ApplicationController
  def index
    shops = Shop.all
    render json: shops
  end

  def show
    shop = Shop.find(params[:id])
    render json: shop
  end

  def update
    shop = Shop.find(params[:id])
    shop.update(shop_params)
    if shop.save
      render json: shop
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
