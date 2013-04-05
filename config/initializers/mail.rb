config_file = File.join(Rails.root, 'config', 'mail.yml')
config = YAML.load_file(config_file)
case Rails.env
when 'development'
  mail_config = config['development']
when 'test'
  mail_config = config['test']
else
  mail_config = config['production']
end
%w(smtp_settings sendmail_settings delivery_method).each do |config_name|
  ActionMailer::Base.send(config_name + '=', mail_config[config_name])
end
