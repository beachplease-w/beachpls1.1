class TournamentsController < ApplicationController
  # skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    if params[:query].present?
      @tournaments = Tournament.search_by_address_serie_and_name(params[:query])
    else
      @tournaments = Tournament.all
    end
  end

  def show
    @tournament = Tournament.find(params[:id])
  end

  private

  def find_tournament
    @tournament = Tournament.find(params[:id])
  end
end
