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
    if request.xhr?
      @message = Message.new(params[:note_data])
      if @message.valid?
        @message.save
        status 200
      else
        p 'error'
      end
    else
        @message = Message.new(message_params)
        if @message.save
          p 'message save successful'
        else
          p 'error'
        end
    end

  end

  private

  def message_params
    params.permit(:name, :email, :phone, :note)
  end
end