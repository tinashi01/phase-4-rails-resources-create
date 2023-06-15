class BirdsController < ApplicationController

  def create
    bird = Bird.create(name: params[:name], species: params[:species])
    render json: bird, status: :created
  end

  # GET /birds
  def index
    birds = Bird.all
    render json: birds
  end

  # GET /birds/:id
  def show
    # params[:id] refers to the dynamic part of our route, defined by :id
    # a request to /birds/2 would give params[:id] a value of 2
    bird = Bird.find_by(id: params[:id])
    render json: bird
  end

end