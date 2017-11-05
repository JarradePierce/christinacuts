class Api::MessagesController < Api::ApiController

  def index
    @messages = Message.all

    render json: @messages
  end

  def show
    @message = Message.find(params[:id])

    render json: @message
  end

  def create
    @message = Message.new(message_params)

    if @message.save
      redirect_to "https://christinacuts.herokuapp.com"
    else
      "Did not save"
    end
  end

  private

  def message_params
    params.permit(:name, :email, :phone, :note)
  end
end