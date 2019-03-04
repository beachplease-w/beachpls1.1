class MessagesController < ApplicationController
  def create
    @tournament = Tournament.find(params[:tournament_id])
    @message = Message.new(message_params)
    @message.user = current_user

    @message.tournament = @tournament
    if @message.save
      respond_to do |format|
        format.html { redirect_to tournament_path(@tournament) }
        format.js  # <-- will render `app/views/reviews/create.js.erb`
      end
    else
      respond_to do |format|
        format.html { render 'tournaments/show' }
        format.js  # <-- idem
      end
    end
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
