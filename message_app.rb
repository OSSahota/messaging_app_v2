require 'sinatra/base'
require './lib/message'
require './config/datamapper_setup'
require 'pry'

class MessageBoard < Sinatra::Base
  enable :method_override

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

  get '/message/:id/edit' do
    @message = Message.get(params[:id])
    erb(:edit_message)
  end

  put '/message/:id' do
    @message = Message.get(params[:id])
    @message.update(params[:message])
    redirect '/'
  end

  delete '/message/:id' do
    @message = Message.get(params[:id])
    @message.destroy
    redirect '/'
    # Message.get(params[:id]).destroy # more direct way?
  end

  run! if app_file == $0
end
