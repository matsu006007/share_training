class TrainingsController < ApplicationController

  def index
    @trainings = Training.includes(:user).order("created_at DESC")
  end
  
end
