class ApplicationController < Sinatra::Base

  # set folder for templates to ../views, but make the path absolute
  set :views, "app/views"

  get '/' do
    @user = User.first
    erb :index
  end
end