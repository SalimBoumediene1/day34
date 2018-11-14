class HomeController < ApplicationController
  def index
    m = MailChimp.new
    m.send
    
    #ContactMailer.contact("salimboumediene@gmail.com").deliver_now
  end
end
