require 'mail_lib'
require 'yaml'
require 'json'


class Main

  def read_settings
    absolute_path = "../mailer_config.yml"
    if File.exists?(absolute_path)
    	mailgun_settings = YAML.load(File.read(absolute_path))
    else
    	raise "Config file not found"
    end 
    return mailgun_settings
  end

  def send_mail
  	Mailgun::Messages.message_bilder
  end

end