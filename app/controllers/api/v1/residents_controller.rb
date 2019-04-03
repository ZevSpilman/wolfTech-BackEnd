class Api::V1::ResidentsController < ApplicationController

  def index
      @residents=Resident.all
      render json: @residents
    end

    def show
      @resident = get_resident
    end

    def create
      @resident = Resident.create(resident_params)
      render json: @resident
    end

    def update
      @resident = get_resident.update(resident_params)
      render json: @resident
    end

    private
    def get_resident
      @resident=Resident.find(params[:id])
    end

    def resident_params
      params.require(:resident).permit(:name, :age, :allergies, :medications)
    end

end
