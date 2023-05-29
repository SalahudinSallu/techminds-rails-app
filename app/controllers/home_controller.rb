class HomeController < ApplicationController
  def index
    @home = Home.last
    @about = About.last
    @service = Service.last
    @portfolio = Portfolio.last
    @team = Team.last
    @contact = Contact.last
  end

  def contact
    ContactMailer.with(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email_address: params[:email],
      subject: params[:subject],
      message: params[:message]
    ).contact.deliver_now
    redirect_to root_path
  end
end
