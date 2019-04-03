class Api::V1::AppointmentsController < ApplicationController

  def index
      @appointments=Appointment.all
      render json: @appointments
    end

    def show
      @appointment = get_appointment
    end

    def create
      @appointment = Appointment.create(appointment_params)
      render json: @appointment
    end

    def update
      @appointment = get_appointment.update(appointment_params)
      render json: @appointment
    end

    private
    def get_appointment
      @appointment = Appointment.find(params[:id])
    end

    def appointment_params
      params.require(:appointment).permit(:resident_id, :time, :variation)
    end

end
