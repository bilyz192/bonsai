class ProductsController < ApplicationController
  def index
    @products = Article.all
  end
  def show
    @product = Article.find(params[:id])
  end
end
