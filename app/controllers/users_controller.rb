class UsersController < ApplicationController 

  get '/signup' do
    erb :'users/signup'
  end

  post '/signup' do
    @user = User.new
    @user.name = params[:name]
    @user.password = params[:password]
    if @user.save
      flash[:success] = '用户创建成功'
      redirect '/'
    else
      # 没有办法render，即 表单提交失败后，没法保持表单内容
      # flash[:warning] = 'lol'
      # erb :'users/signup'
      # erb :'users/signup', :layout => :post
      redirect '/'
    end
  end

  get '/login' do
    
  end

  post '/login' do

  end

  delete '/logout' do

  end

end