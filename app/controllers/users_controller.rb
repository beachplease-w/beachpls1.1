class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    # @tournaments = @user.teams.inscriptions.tournaments
    # @team = TeamPlayer.first
  end

  private

  def user_params
    params.require(:user).permit(:id, :photo)
  end
end
