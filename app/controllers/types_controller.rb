class TypesController < ApplicationController
  before_action :set_type, only: %i[ show edit update destroy ]

  def index
    @types = Type.all
    @title = 'Types'
  end

  def show
  end

  def new
    @type = Type.new
  end

  def edit
  end

  def create
    @type = Type.new(type_params)

    if @type.save
      redirect_to type_url(@type), notice: "Type was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @type.update(type_params)
      redirect_to type_url(@type), notice: "Type was successfully updated." 
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @type.destroy
      redirect_to types_url, notice: "Type was successfully destroyed."
  end

  private
    def set_type
      @type = Type.find(params[:id])
    end

    def type_params
      params.require(:type).permit(:name)
    end
end
