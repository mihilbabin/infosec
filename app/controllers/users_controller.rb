class UsersController < ApplicationController
  before_action :set_labs

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      flash[:notice] = I18n.t('users.registrations.success', name: @user.name)
      redirect_to root_url
    else
      flash.now.alert = I18n.t('users.registrations.error')
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
