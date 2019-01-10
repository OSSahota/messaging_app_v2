require 'data_mapper'

# DataMapper.setup(:default, "postgres://localhost/message_app_#{ENV['RACK_ENV']}")

DataMapper.setup(:default, "postgres://localhost/message_app_development")

DataMapper.finalize
# DataMapper.auto_upgrade!
