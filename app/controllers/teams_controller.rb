class TeamsController < ApplicationController
  def index
    @tournament = Tournament.find(params[:tournament_id])
    @teams = Team.all
    @my_teams = current_user.teams
  end
end
