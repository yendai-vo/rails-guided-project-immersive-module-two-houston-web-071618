class CuisinesController < ApplicationController
  before_action :set_cuisine, only: [:show, :edit, :update, :destroy]

  # GET /cuisines
  # GET /cuisines.json
  def index
    @cuisines = Cuisine.all
  end

  # GET /cuisines/1
  # GET /cuisines/1.json
  def show
  end

  # GET /cuisines/new
  def new
    @cuisine = Cuisine.new
  end

  # GET /cuisines/1/edit
  def edit
  end

  # POST /cuisines
  # POST /cuisines.json
  def create
    @cuisine = Cuisine.new(cuisine_params)


  end

  # PATCH/PUT /cuisines/1
  # PATCH/PUT /cuisines/1.json
  def update
    
  end

  # DELETE /cuisines/1
  # DELETE /cuisines/1.json
  def destroy
    @cuisine.destroy
    
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cuisine
      @cuisine = Cuisine.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cuisine_params
      params.fetch(:cuisine, {})
    end
end
