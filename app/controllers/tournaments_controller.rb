class TournamentsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :find_tournament, only: [:show]

  def index
    if params[:query].present?
      @tournaments = Tournament.search_by_address_serie_and_name(params[:query])
      @tournaments_for_map = Tournament.where.not(latitude: nil, longitude: nil)
    else
      @tournaments = Tournament.all
      @tournaments_for_map = Tournament.where.not(latitude: nil, longitude: nil)
    end

    @markers = @tournaments_for_map.map do |tournament|
      {
        lng: tournament.longitude,
        lat: tournament.latitude,
        # infoWindow: render_to_string(partial: "infowindow", locals: { tour: tour })
        image_url: helpers.asset_url('tab-icon.png')
      }
    end
  end

  def show
  end

  private

  def tournament_params
    params.require(:tournament).permit(:photo)
  end

  def find_tournament
    @tournament = Tournament.find(params[:id])
  end
end
