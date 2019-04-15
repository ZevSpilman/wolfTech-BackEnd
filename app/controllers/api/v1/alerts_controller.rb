class Api::V1::AlertsController < ApplicationController

  def index
      @alerts=Alert.all
      render json: @alerts, :include => [:nurse]
    end

    def show
      @alert = get_alert
      render json: @alert, :include => [:nurse]
    end

    def create
      @alert = Alert.new(alert_params)
      if @alert.save
        ActionCable.server.broadcast('alerts', @alert)
      end
      render json: @alert
    end

    def update
      @alert = get_alert.update(alert_params)
      render json: @alert
    end

    def destroy
      @alert = get_alert.destroy
    end

    private
    def get_alert
      @alert=Alert.find(params[:id])
    end

    def alert_params
      params.require(:alert).permit(:message, :admin_id, :nurse_id, :resolved)
    end

end
