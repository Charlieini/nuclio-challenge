class ProductsController < ApplicationController

  before_action :set_product, only: [:show, :edit, :update, :destroy]

  def index
    @products = Product.all
  end

  def show
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new product_params
    if @product.save
      flash[:notice] = "Product successfully create"
      redirect_to product_path(@product)
    else
      flash[:alert] = "Product not saved"
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @product.destroy
    redirect_to products_path
  end

  private

  def set_product
    @product = Product.find params[:id]
  end

  def product_params
    params.require(:product).permit(:price, :type_id, :name)
  end

end
