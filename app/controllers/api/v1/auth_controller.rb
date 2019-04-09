class Api::V1::AuthController < ApplicationController

  def login
    nurse = Nurse.find_by(nursename: params[:nursename])
    if nurse && nurse.authenticate(params[:password])
      # prove that the nurse exists in our database
      # -> lets send them a token!
      # -> the token will help us identify and validate our client

      jwt = encode_token({nurse_id: nurse.id})
      render json: {nurse: NurseSerializer.new(nurse), jwt: jwt}
    else
      render json: {errors: "Please enter the correct nursename and password!"}
    end
  end

  def auto_login
    # the auth flow
      # -> lets check to see IF we have headers
      # -> is there a token
      # -> decode the token
      # -> send back nurse
    nurse = curr_nurse

    if nurse
      render json: nurse
    else
      render json: {errors: "I dont think so"}
    end
  end

end
