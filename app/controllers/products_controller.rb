class ProductsController < ApplicationController
  def new
    @product = Product.new
  end

  def index
    @product = Product.all
  end

  def create
    @product = Product.new(product_params)

    if @product.save
      redirect_to products_path, notice: "Product added."
    else
      render :new
    end
  end

  private

  def product_params
    params.require(:product).permit(:name, :picture, :info, :website)
  end
end
