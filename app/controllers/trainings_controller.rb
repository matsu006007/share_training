class TrainingsController < ApplicationController

  def index
    @trainings = Training.includes(:user).order("created_at DESC")
  end
  
  def new
    @training = Training.new
  end

  def create
    @training = Training.new(training_params)
    @training.save
    redirect_to trainings_path
  end

  def show
    @training = Training.find(params[:id])
  end

  private

  def training_params
    params.require(:training).permit(:title, :content ).merge(user_id: current_user.id)
  end

end
