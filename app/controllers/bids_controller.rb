class BidsController < ApplicationController

  def index
    token = request.headers["Authentication"].split(" ")[1]
    user_id = decode(token)
    render json: Bid.where(company_id: user_id["user_id"])
  end

end
