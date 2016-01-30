class ShopsController < ApplicationController
  def index
    @shops = Shop.all
  end

  def show
    @shop = Shop.find(params[:id])
  end

  def products
    @shop = Shop.find(params[:shop_id])
    @shop_products = @shop.products
  end
end
