class ProductsController < ApplicationController
  def show
    @name = params[:id]
  end
end
