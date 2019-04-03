class Api::V1::AdminsController < ApplicationController

  def index
      @admins=Admin.all
      render json: @admins
    end

    def show
      @admin = get_admin
    end

    def create
      @admin = Admin.create(admin_params)
      render json: @admin
    end

    def update
      @admin = get_admin.update(admin_params)
      render json: @admin
    end

    private
    def get_admin
      @admin=Admin.find(params[:id])
    end

    def admin_params
      params.require(:admin).permit(:name)
    end

end
