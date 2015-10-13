class WelcomeController < ApplicationController
  skip_before_filter :verify_authenticity_token ,
  def index

  end



  def sendme
    @user = User.new user_params



if @user.save
  render "success"
end


  end


  private
  def user_params
    params.require(:user).permit(:name, :number)
  end
end
