class TroublesController < ApplicationController

  def index
    @troubles = Trouble.includes(:user).order("created_at DESC")
  end

  def new
    @trouble = Trouble.new
  end

  def create
    @trouble = Trouble.new(trouble_params)
    @trouble.save
    redirect_to troubles_path
  end

  private

  def trouble_params
    params.require(:trouble).permit(:trouble_title, :trouble_content).merge(user_id: current_user.id)
  end

end
