class ContactMessagesController < ApplicationController
  
  def new
    @contact_message = ContactMessage.new
  end

  def create
    @contact_message = ContactMessage.new(params[:contact_message])

    respond_to do |format|
      if @contact_message.save
        format.html { redirect_to new_contact_path, notice: 'Email was successfully created.' }
      else
        format.html { render action: "new", alert: "There was a problem." }
      end
    end
  end

end
