class CheesesController < ApplicationController

  # GET /cheeses
  def index
    cheeses = Cheese.all
    render json: cheeses
  end

  # GET /cheeses/:id
  def show
    # cheese = Cheese.find_by(id: params[:id])
    # render json: cheese

  #   cheese = Cheese.find_by(id: params[:id])
  # render json: cheese, except: [:created_at, :updated_at], methods: [:summary]

  cheese = Cheese.find_by(id: params[:id])
  if cheese
    render json: cheese, except: [:created_at, :updated_at], methods: [:summary]
  else
    render json: { error: 'Cheese not found' }
  end
  
  end



end
