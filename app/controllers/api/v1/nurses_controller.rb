class Api::V1::NursesController < ApplicationController

  def index
      @nurses=Nurse.all
      render json: @nurses, :include => [:shifts]
    end

    def show
      @nurse = get_nurse
      render json: @nurse, :include => [:shifts]
    end

    def create
      @nurse = Nurse.create(nurse_params)
      render json: @nurse
    end

    def update
      @nurse = get_nurse.update(nurse_params)
      render json: @nurse
    end

    private
    def get_nurse
      @nurse = Nurse.find(params[:id])
    end

    def nurse_params
      params.require(:nurse).permit(:name, :contract, :emergency_contact, :logged_in, :residents)
    end

end
