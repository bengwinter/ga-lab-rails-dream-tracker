class DreamsController < ApplicationController
  before_action :set_dream, only: [:show, :edit, :update, :delete]

  def show
  end

  def index
    @dreams = Dream.all
  end

  def new 
    @dream = Dream.new
  end

  def create
    @dream = Dream.new(dream_params)
    if @dream.save
      redirect_to @dream
    else 
      render action: 'new'
    end
  end

  def edit
  end

  def update
    if @dream.update(dream_params)
      redirect_to dreams_url
    else
      render action: 'edit'
    end
  end

  def destroy
    @dream.destroy
    redirect_to dreams_url
  end

  private
  def dream_params
      params.require(:dream).permit(:name, :description, :scary, :fun)
  end

  def set_dream
    @dream = Dream.find(params[:id])
  end

end
