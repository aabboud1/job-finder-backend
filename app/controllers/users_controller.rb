class UsersController < ApplicationController


    def index
        render params
    end

    def show
        token = request.headers["Authentication"].split(" ")[1]

        render json: User.find(decode(token)["user_id"]), status: :accepted
    end

    def create
        @user = User.new(name: params["name"], 
                    password: params["password"], 
                    isGovernment: params["isGovernment"])

        if @user.save 
            token = encode("user_id": @user.id)
            render json: {
                authenticated: true,
                message: "You're logged in",
                token: token,
                user: @user,
            }, status: :accepted
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
