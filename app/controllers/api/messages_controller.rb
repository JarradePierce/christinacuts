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
      p @message
    else
      "Did not save"
    end
  end

  private

  def message_params
    params.permit(:data_value)
  end
end