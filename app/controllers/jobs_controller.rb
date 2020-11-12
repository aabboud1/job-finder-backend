class JobsController < ApplicationController


  def index
    render json: Job.all
  end

  def create 
    
    token = request.headers["Authentication"].split(" ")[1]
    job = Job.new(name: params["name"],
                  price: params["price"],
                  deadline: params["deadline"],
                  govt_id: decode(token)["user_id"]
                  # company_id: null
                  # we have an issue that company cannot be null or nil
                  # let's ask how to handle this
                )
    render json: job
    if job.save
      render json: job
    end
  end

  def destroy
    Job.destroy(params[:id])
    render json: Job.all
  end


end
