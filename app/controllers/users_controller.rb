class UsersController < ApplicationController
  def loginPage
  end
  
  def signupPage
  end

  def logout
    session[:user_tgnum]=nil
    redirect_to("/")
  end

  def login
    @user = User.find_by(
      tgnum: params[:tgnum])
    if @user && @user.authenticate(params[:password])
      session[:user_tgnum]=@user.tgnum
      redirect_to("/mypage/#{@user.tgnum}")
    else
      render("users/loginPage")
    end
  end

  def signup
    @user = User.new(
      firstname: params[:firstname],
      lastname: params[:lastname],
      tgnum: params[:tgnum],
      email: params[:email],
      password: params[:password]
    )
    if @user.save
      session[:user_tgnum]=@user.tgnum
      redirect_to("/")
      # redirect_to("/users/#{@user.tgnum}")
    else
      puts @user.errors.full_messages
      render("users/signupPage")
    end
  end

  def mypage
    @user=User.find_by(
      tgnum: params[:tgnum]
    )
    if @user && session[:user_tgnum]==@user.tgnum
    else
      redirect_to("/")
    end
  end
end
