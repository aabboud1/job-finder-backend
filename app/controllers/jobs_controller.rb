class JobsController < ApplicationController


  def index
    render json: Job.all
  end

  def show
    job = Job.find(params["id"].to_i)
    render json: job
  end

  def create 
    token = request.headers["Authentication"].split(" ")[1]
    job = Job.new(name: params["name"],
                  price: params["price"],
                  deadline: params["deadline"],
                  govt_id: decode(token)["user_id"],
                  company_id: decode(token)["user_id"]
                  # we have an issue that company cannot be null or nil
                  # let's ask how to handle this
                )
    if job.save
      render json: job
    end
  end

  def update
    job = Job.find(params["id"].to_i)
    job.update(name: params["name"], price: params["price"], deadline: params["deadline"])
  end

  def destroy
    Job.destroy(params[:id])
    render json: Job.all
  end



end
