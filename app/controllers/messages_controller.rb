class MessagesController < ApplicationController

  def create
    @message = Message.new(params[:message].permit(:name,:email,:phone,:content))
    if @message.save
      @notice = t("messages.create_success")
    else
      @error = @message.errors.full_messages
    end
    respond_to do |format|
      format.js
    end
  end
end