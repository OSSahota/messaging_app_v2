namespace :db do
  task :setup do

    require 'data_mapper'
    require './message_app'
    require './config/datamapper_setup'
  end

  task :auto_migrate => :setup do
    DataMapper.auto_migrate!
    puts 'Migration successful!'
  end

  task :auto_upgrade => :setup do
    DataMapper.auto_upgrade!
    puts 'Upgrade successful!'
  end
end
