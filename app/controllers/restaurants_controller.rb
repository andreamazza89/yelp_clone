class RestaurantsController < ApplicationController
  def create
    render plain: params[:restaurant].inspect
  end

  def new
  end

  def index
  end

  def update
  end

  def edit
  end

  def delete
  end

  def show
  end
end
