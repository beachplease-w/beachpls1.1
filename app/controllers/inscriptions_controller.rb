class InscriptionsController < ApplicationController
  def new
    @inscription = Inscription.new
  end

  def create
    @inscription = Inscription.new(inscriptions_params)
    if @inscription.save
      redirect_to tournaments_path
    else
      render :new
    end
  end

  private

  def inscriptions_params
    params.require(:inscription).permit(:team, :tournament)
  end
end
