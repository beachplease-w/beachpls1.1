class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @tournaments = @user.tournaments
  end

  private

  def user_params
    params.require(:user).permit(:id, :photo)
  end
end
