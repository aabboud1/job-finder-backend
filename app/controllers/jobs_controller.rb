class JobsController < ApplicationController


  def new
    
  end

  def create 
    byebug
      job = Job.new(name: params["name"]
                    price: params["price"]
                    deadline: params["deadline"]
                    govt_id: params["govt_id"]
                  )
      if job.save
        render json: job
      end
  end


end
