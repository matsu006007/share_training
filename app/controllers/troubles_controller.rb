class TroublesController < ApplicationController

  def index
    @troubles = Trouble.includes(:user).order("created_at DESC")
  end

end
