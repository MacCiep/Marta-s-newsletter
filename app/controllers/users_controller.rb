class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save do
      AssignToNewsletterMailer.welcome_mail(@user).deliver_later
      end
    else
      render :new, status: :unprocessable_entity
    end
  end

  def user_params
    puts params
    params.permit(:name, :email)
  end
end