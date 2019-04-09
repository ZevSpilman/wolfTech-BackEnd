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
      byebug
      @nurse = Nurse.new(nurse_params)
      if @user.save
        # JWT.encode(payload, 'secret')
  			jwt = encode_token({user_id: user.id})
  			render json: {user: UserSerializer.new(user), jwt: jwt}
  		else
  			render json: {errors: user.errors.full_messages}
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
      params.require(:nurse).permit(:name, :contract, :emergency_contact, :logged_in, :residents)
    end

end
