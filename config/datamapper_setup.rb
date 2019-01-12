require 'data_mapper'


# DataMapper.setup(:default, "postgres://localhost/message_app_#{ENV['RACK_ENV']}")

# Can't seem to use the ENV variable when running Rake. Research how to use the
# above approach rather than hard-coded database name.
DataMapper.setup(:default, "postgres://localhost/message_app_development")

DataMapper.finalize
# DataMapper.auto_upgrade!
