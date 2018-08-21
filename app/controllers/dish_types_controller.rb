class DishTypesController < ApplicationController
  before_action :set_dish_type, only: [:show, :edit, :update, :destroy]

  # GET /dish_types
  # GET /dish_types.json
  def index
    @dish_types = DishType.all
  end

  # GET /dish_types/1
  # GET /dish_types/1.json
  def show
  end

  # GET /dish_types/new
  def new
    @dish_type = DishType.new
  end

  # GET /dish_types/1/edit
  def edit
  end

  # POST /dish_types
  # POST /dish_types.json
  def create
    @dish_type = DishType.new(dish_type_params)

    
  end

  # PATCH/PUT /dish_types/1
  # PATCH/PUT /dish_types/1.json
  def update
    
  end

  # DELETE /dish_types/1
  # DELETE /dish_types/1.json
  def destroy
    @dish_type.destroy
    
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dish_type
      @dish_type = DishType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dish_type_params
      params.fetch(:dish_type, {})
    end
end
