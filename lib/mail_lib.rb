module Mailer


  # Send mailers 
  class Messages
    
    #TODO
    def initilize
    end


    #Build the parameter hash from the settings
    def message_bilder
      "https://api:#{test_key}@api.mailgun.net/v3/#{domain_name}/messages",
      :from => "Excited User <mailgun@YOUR_DOMAIN_NAME>",
      :to => "bar@example.com, YOU@YOUR_DOMAIN_NAME",
      :subject => "Hello",
      :text => "Testing some Mailgun awesomness!"
    end

    #ToDo : Chack the parameter hash for invalid entries and empty values
    def send_messages(params_hash)
      return RestClient.post(params_hash) if params_hash != nil
      raise "Params Error"
    end

    def read_response_hash
      
    end
  end

  # block the delivery to the email id in these responses  
  class Suppressions

    def get_bounces
      RestClient.get "https://api:YOUR_API_KEY@api.mailgun.net/v3/YOUR_DOMAIN_NAME/bounces"
    end

    def get_unsubscribes
      RestClient.get "https://api:YOUR_API_KEY@api.mailgun.net/v3/YOUR_DOMAIN_NAME/unsubscribes"
    end

    def get_complaints
      RestClient.get "https://api:YOUR_API_KEY@api.mailgun.net/v3/YOUR_DOMAIN_NAME/complaints"
    end

  end

end