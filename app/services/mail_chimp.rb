require 'gibbon'

class MailChimp
    
    def initialize
        @gibbon = Gibbon::Request.new(api_key: Rails.application.credentials[:secret_api_key])
    end

    def send
    @gibbon.lists("0703bcc35b").members.retrieve.body.each do |k, v|
        if k == "members"
            v.each do |key, value|
                 key.each do |i, vv|
                    if i == "email_address"
                        ContactMailer.contact("#{vv}").deliver_now
                    end
                 end
            end
        end
    end
    
    end
end