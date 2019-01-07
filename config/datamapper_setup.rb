require 'data_mapper'

DataMapper.setup(:default,"postgres://localhost/development")
DataMapper.finalize

DataMapper.auto_upgrade!
# DataMapper.auto_migrate!
