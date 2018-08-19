class MessagesController < ApplicationController
    
    def index
        @messages = Message.all.order('created_at DESC')
    end

    def new
        @message = Message.new
    end

    def create
        @message = Message.new(message_params)
        if @message.save
            flash[:success] = "Thank you for submitting your message"
            redirect_to '/'
        else
            flash.now[:danger] = 'Please provide your name, email, and message.  Thank you' # Not quite right!
            render 'new'
        end
    end

    private
        def message_params
            params.require(:message).permit(:name, :email, :content)
        end
end
