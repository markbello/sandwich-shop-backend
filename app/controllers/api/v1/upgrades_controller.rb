class Api::V1::UpgradesController < ApplicationController
  def index
    upgrades = Upgrade.all
    render json: upgrades
  end

  def show
    upgrade = Upgrade.find(params[:id])
    render json: upgrade
  end

  def destroy
    upgrade = Upgrade.find(params[:id])
    upgrade.delete
    render json:{message: 'Upgrade successfully Used.'}
  end

  private

  def upgrade_params
    # t.string "name"
    # t.integer "cost"
    # t.integer "multiplier"
    # t.string "user"
    # t.integer "worker_id"
    params.permit(:name, :cost, :multiplier, :user, :worker_id)
  end
end
