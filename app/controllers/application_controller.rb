class ApplicationController < Sinatra::Base

  # set folder for templates to ../views, but make the path absolute
  set :views, "app/views"
  enable :sessions
  register Sinatra::Flash

  get '/' do
    erb :index
  end
end