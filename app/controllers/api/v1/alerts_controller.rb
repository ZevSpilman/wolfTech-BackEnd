class Api::V1::AlertsController < ApplicationController

  def index
      @alerts=Alert.all
      render json: @alerts
    end

    def show
      @alert = get_alert
    end

    def create
      @alert = Alert.create(alert_params)
      render json: @alert
    end

    def update
      @alert = get_alert.update(alert_params)
      render json: @alert
    end

    private
    def get_alert
      @alert=Alert.find(params[:id])
    end

    def alert_params
      params.require(:alert).permit(:message, :admin_id, :nurse_id)
    end

end
