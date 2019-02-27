class TeamPlayersController < ApplicationController
  def new

   @team = Team.new
   @team_player = TeamPlayer.new
  end

  def create
    team = Team.create
    @team_player1 = TeamPlayer.new
    @team_player2 = TeamPlayer.new(params[:user])
    raise
    # if @team_player.user.team.present?
    # @team_player.team = @team_player.user.team
    # else
    @team_player1.team = team
    @team_player2.team = team
    # end
    @user = current_user
    @team_player1.user = @user
    @team_player1.save
    @team_player2.save

  end

  def edit
    @team_player = TeamPlayer.new(params[:user_id])
    @user = current_user
    @team_player.team = @user.teams.last
    raise
    @team_player.save
  end

  # def destroy
  #   @team_player = TeamPlayer.find(params[:id])
  #   @team_player.destroy

  private

  def team_player_params
    params.require(:team_player).permit(:user_id, :team_id)
  end
end
