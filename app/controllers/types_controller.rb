class TypesController < ApplicationController

  def new
    @type = Type.new
  end

  def create
    @type = Type.new type_params
    redirect_to products_path
  end

  private

  def type_params
    params.require(:type).permit(:name)
  end

end
