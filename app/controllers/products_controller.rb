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

  def update
    @product = Product.find(params[:id])

    if @product.update_attributes(product_params)
      redirect_to products_path
    else
      render :edit
    end
  end

  private

  def product_params
    params.require(:product).permit(:name, :picture, :info, :website)
  end
end
