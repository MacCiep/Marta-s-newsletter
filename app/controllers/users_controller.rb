class UsersController < ApplicationController
  def create
    @user = User.create(:user_params)
    if @user.save do
      AssignToNewsletterMailer.welcome_mail(@user).deliver_later
      end
    end
  end

  def user_params
    params.require(:user).permit(:name, :email)
  end
end