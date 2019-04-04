class Api::V1::ShiftsController < ApplicationController

  def index
      @shifts = Shift.all
      render json: @shifts, :include => [:unit]
    end

    def show
      @shift = get_shift
      render json: @shift, :include => [:unit]
    end

    def create
      @shift = Shift.create(shift_params)
      render json: @shift
    end

    def update
      @shift = get_shift.update(shift_params)
      render json: @shift
    end

    private
    def get_shift
      @shift = Shift.find(params[:id])
    end

    def shift_params
      params.require(:shift).permit(:unit_id, :nurse_id, :time_in, :time_out)
    end

end
