class TypesController < ApplicationController

  def new
    @type = Type.new
  end

  def create
    @type = Type.new type_params
    if @type.save
      flash[:notice] = "Type successfully create"
    else
      flash[:alert] = "Type not saved"
    end
    redirect_to products_path
  end

  private

  def type_params
    params.require(:type).permit(:name)
  end

end
