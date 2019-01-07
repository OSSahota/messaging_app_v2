require 'sinatra/base'
require './lib/message'
require './config/datamapper_setup'
require 'pry'

class MessageBoard < Sinatra::Base

  ENV['RACK_ENV'] ||= 'development'

  # show all messages
  get '/' do
    @messages = Message.all
    erb(:index)
  end

  # show a specific message based off the id
  get '/messages/:id' do
    @message = Message.get(params[:id])
    erb(:messages)
  end

  # create a message
  post '/message' do
    Message.create(text: params[:message])
    redirect '/'
  end

  run! if app_file == $0
end
