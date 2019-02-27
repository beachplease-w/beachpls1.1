class TeamsController < ApplicationController
  def index
    @teams = Team.all.select { |team| team.user == current_user }
  end
end
