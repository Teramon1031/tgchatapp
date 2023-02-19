class HomeController < ApplicationController
  def top
    @user = User.find_by(tgnum:session[:user_tgnum])
  end
end
