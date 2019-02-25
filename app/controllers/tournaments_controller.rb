class TournamentsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_find_tournament, only: [:show]

  def index
    @tournaments = Tournament.all
  end

  def show

  end

  private

  def find_tournament
    @tournament = Tournament.find(params[:id])
  end
end
