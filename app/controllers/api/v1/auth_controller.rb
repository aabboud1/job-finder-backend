class Api::V1::AuthController < ApplicationController


  def create

    
    @user = User.find_by(name: params["name"])
    if @user && @user.authenticate(params["password"])
      token = encode("user_id": @user.id)
      render json: {
        authenticated: true,
        message: "You're logged in",
        token: token,
        user: @user,
      }, status: :accepted
    else
      render json: {
        authenticated: false,
        massage: "We couldn't find you"
      }, status: :unauthorized
    end
  end


end
