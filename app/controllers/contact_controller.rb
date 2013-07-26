class ContactController < FrontendController
  before_filter :set_title

  def index
    @message = Message.new
  end

  def create
    @message = Message.new(params[:message])

    if @message.valid?
      NotificationsMailer.new_message(@message).deliver
      redirect_to(contacts_path, notice: t(:message_was_sent))
    else
      flash.now.alert = t(:fill_all_fields)
      render :index
    end
  end

  private
    def set_title
      @page_title = "- #{t(:contacts)}"
    end
end
