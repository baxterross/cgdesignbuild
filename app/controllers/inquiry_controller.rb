class InquiryController < ApplicationController
  skip_before_action :verify_authenticity_token
  require 'mailgun'

  def create
    puts params

    mailgun = Mailgun::Client.new 'key-5plor0qrqe96g0zp3moq1zsimfc2hnr6'
    mailgun.send_message 'relishmix.mailgun.org', {
      :to => 'baxterross@gmail.com',
      :from => 'webmaster@cgdesignbuild.com',
      :subject => 'contact request on cgdesignbuild.com',
      :text => 'Received new contact request on cgdesignbuild.com. name: '+params[:name]+', email: '+params[:email]+', phone: '+params[:phone]+', message: '+params[:message]
    }

    redirect_to '/about'
  end

end
