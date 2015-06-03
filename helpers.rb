 
# require 'twilio_keys.rb'

def send_sms(phone_number, text)
    # put your own credentials here 
    account_sid = 'AC9b6366875e0812d52136dde85123220c' 
    auth_token = 'ccfca6b9380fe50b4c943d2d66ee6153' 
     
    # set up a client to talk to the Twilio REST API 
    @client = Twilio::REST::Client.new account_sid, auth_token 

    message = @client.account.messages.create(
        :body => text,
        :to => phone_number,
        :from => '+19173380048',
    )
    puts message.sid
end

def validate_phone_number(number)

end

def validate_date_number(day)

end
