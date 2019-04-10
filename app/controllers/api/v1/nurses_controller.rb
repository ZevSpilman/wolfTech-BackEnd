class Api::V1::NursesController < ApplicationController

  def index
      @nurses=Nurse.all
      render json: @nurses
    end

    def show
      @nurse = get_nurse
      render json: @nurse
    end

    def create
      @nurse = Nurse.new(
        name: params[:name],
        password: params[:password],
      )
      if @nurse.save
        # JWT.encode(payload, 'secret')
  			jwt = encode_token({nurse_id: @nurse.id})
  			render json: {nurse: NurseSerializer.new(@nurse), jwt: jwt}
  		else
  			render json: {errors: @nurse.errors.full_messages}
  		end
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
      params.require(:nurse).permit(:name, :password_digest)
    end

end
