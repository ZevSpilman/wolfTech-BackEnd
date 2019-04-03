class Api::V1::UnitsController < ApplicationController

  def index
      @units=Unit.all
      render json: @units, :include => [:residents]
    end

    def show
      @unit = get_unit
    end

    def create
      @unit = Unit.create(unit_params)
      render json: @unit
    end

    def update
      @unit = get_unit.update(unit_params)
      render json: @unit
    end

    private
    def get_unit
      @unit=Unit.find(params[:id])
    end

    def unit_params
      params.require(:unit).permit(:name)
    end

end
