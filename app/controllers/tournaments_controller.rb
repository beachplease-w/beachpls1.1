class TournamentsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
<<<<<<< HEAD
=======
  before_action :set_find_tournament, only: [:show]
>>>>>>> master

  def index
    # @tournaments = Tournament.all
    @tournaments = Tournament.where.not(latitude: nil, longitude: nil)

    @markers = @tournaments.map do |tournament|
      {
        lng: tournament.longitude,
        lat: tournament.latitude
        # infoWindow: render_to_string(partial: "infowindow", locals: { tournament: tournament }),
        # image_url: helpers.asset_url('REPLACE_THIS_WITH_YOUR_IMAGE_IN_ASSETS')
      }

    if params[:query].present?
      @tournaments = Tournament.search_by_address_serie_and_name(params[:query])
    else
      @tournaments = Tournament.all

    end
  end

  def show

  end

  private

  def find_tournament
    @tournament = Tournament.find(params[:id])
  end
end
