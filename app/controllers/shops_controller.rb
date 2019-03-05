class ShopsController < ApplicationController
  def index
  end

  def create
    @new_shop = Shop.new(shop_params)
    if @new_shop.save
      render "success"
    else
      redirect_to root_url
    end
  end

  private

    def shop_params
      params.require(:shop).permit(:title, :site, :city, :companyphone, :yml, :inn, :fio, :address, :phone)
    end
end
