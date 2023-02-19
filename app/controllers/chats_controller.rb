class ChatsController < ApplicationController
  def chat
    @user = User.find_by(tgnum:params[:tgnum])
    if @user && @user.tgnum==session[:user_tgnum]
     @history=Chat.where(studentnum: params[:tgnum])
    else
      redirect_to("/")
    end
  end

  def create
    @user=User.find_by(tgnum:params[:tgnum])
    @text=params[:text]
    @chat=Chat.new(
      content: @text,
      studentnum: session[:user_tgnum]
    )
    @chat.save
    redirect_to("/chat/#{@user.tgnum}")
  end
end
