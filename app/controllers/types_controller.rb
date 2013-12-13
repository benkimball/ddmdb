class TypesController < ApplicationController
  def index
    @types = Type.order(:name)
  end

  def new
    @type = Type.new
  end

  def create
    Type.create(type_params)
    redirect_to types_path
  end

  def show
    @type = Type.find(params[:id])
  end

  private

  def type_params
    params.require(:type).permit(:name)
  end
end
