class UsersController < ApplicationController


    def index
        render params
    end

    def create
        user = User.new(name: params["name"], 
                    password: params["password"], 
                    isGovernment: params["isGovernment"])

        if user.save 
            # session[:user_id] = user.id
            # cookies[:user_i] = user.id
            # render json: Item.find(params["id"]).to_json()
            render json: user
        else
            # session["user_id"] = user.name
        end
    end

    def process_login
        user = User.find_by(name: params["name"])
        if user && user.authenticate(params["password"])
            render json: user
        else
            print "You're not ok and out"
        end

        #render json: Item.find(params["id"]).to_json()
    end

end
