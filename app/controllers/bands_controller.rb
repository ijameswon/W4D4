class BandsController < ApplicationController
  def index
    @bands = Band.all
    render :index

  end

  def create
  end

  def new
  end

  def edit
  end

  def show
  end

  def update
  end

  def destroy
  end
end
