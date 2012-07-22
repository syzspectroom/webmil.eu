
class ContactController < ApplicationController
  def index
    @page_title = '- Contacts'
    @message = Message.new
  end

  def create
    @page_title = '- Contacts'
    @message = Message.new(params[:message])
    
    if @message.valid?
      NotificationsMailer.new_message(@message).deliver
      redirect_to(contacts_path, notice: "Message was successfully sent.")
    else
      flash.now.alert = "Please fill all fields."
      render :index
    end
  end 
end
