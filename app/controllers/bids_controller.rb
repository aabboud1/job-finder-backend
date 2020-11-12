class BidsController < ApplicationController

  def userBids
    token = request.headers["Authentication"].split(" ")[1]
    user_id = decode(token)
    userBids = []
    Bid.all.each do |bid|
      if (bid.company_id == user_id["user_id"])
        userBids.push(bid)
      end
    end
    render json: userBids
  end

end
