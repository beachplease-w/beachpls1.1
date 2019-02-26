class TournamentsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_find_tournament, only: [:show]

  def index
    # @tournaments = Tournament.all
    @tournaments = Tournament.where.not(latitude: nil, longitude: nil)

    @markers = @tournaments.map do |tournament|
      {
        lng: tournament.longitude,
        lat: tournament.latitude,
        infoWindow: render_to_string(partial: "infowindow", locals: { tournament: tournament })
        # image_url: helpers.asset_url('REPLACE_THIS_WITH_YOUR_IMAGE_IN_ASSETS')
      }
    end
  end

  def show

  end

  private

  def find_tournament
    @tournament = Tournament.find(params[:id])
  end
end
