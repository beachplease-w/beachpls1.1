class TeamsController < ApplicationController
  def index
    @teams = Team.all.select { |team| team.user == current_user }
  end

  def create
    @team = Team.create
    @team_player = TeamPlayer.new
    @team_player.team = @team
    @team_player.user = current_user
    @team_player.save
  end
end
