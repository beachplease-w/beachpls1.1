class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @events = @user.tournaments.map do |tournament|
      {
        title: tournament.name,
        start: tournament.date,
        allDay: true,
      }
    end
  end

  def update
    @user = current_user
  end

  private

  def user_params
    params.require(:user).permit(:id, :photo)
  end
end
