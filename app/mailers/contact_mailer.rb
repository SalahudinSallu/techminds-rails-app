class ContactMailer < ApplicationMailer
  def contact
    @first_name = params[:first_name]
    @last_name = params[:last_name]
    @email_address = params[:email_address]
    @subject = params[:subject]
    @message = params[:message]
    mail(to: 'to@example.com', subject: @subject)
  end
end
