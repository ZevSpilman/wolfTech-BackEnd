class UnitController < ApplicationController

  def index
      @units=Unit.all
      render json: @residents
    end

    def show
      @resident = get_resident
    end

    def create
      @resident = Unit.create(resident_params)
      render json: @resident
    end

    def update
      @resident = get_resident.update(resident_params)
      render json: @resident
    end

    private
    def get_resident
      @resident=Unit.find(params[:id])
    end

    def resident_params
      params.require(:resident).permit(:name)
    end

end
