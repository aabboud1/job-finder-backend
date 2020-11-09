class UsersController < ApplicationController


    def index
        render params
    end

    def create
        user = User.new(name: params["name"], password: params["password"])
        if user.save 
            session["user_id"] = user.id
            cookies["user_i"] = user.id
        else
            session["user_id"] = user.name
        end
    end

    def process_login
        user = User.find_by(name: params["name"])
        if user && user.authenticate(params["password"])
            print "you're ok and in"
        else
            print "You're not ok and out"
        end

        #render json: Item.find(params["id"]).to_json()
    end

end
