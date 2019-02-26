class TournamentsController < ApplicationController
  # skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    if params[:query].present?
        pg_search_scope :search_by_adress_serie_and_name,
          against: [ :adress, :serie, :name ],
          using: {
            tsearch: { prefix: true } # <-- now `superman batm` will return something!
          }
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

