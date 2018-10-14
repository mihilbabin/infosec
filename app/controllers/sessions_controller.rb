class SessionsController < ApplicationController
  before_action :set_labs, except: :destroy
  before_action :set_user, only: :create

  def new
    redirect_to root_url if logged_in?
  end

  def create
    if @user&.authenticate(params[:session][:password])
      reject_locked!
    else
      @user&.increment!(:attempts)
      flash.now[:error] = I18n.t('users.sessions.error')
      render :new
    end
  end

  def destroy
    log_out
    redirect_to root_url, notice: I18n.t('users.sessions.logout')
  end

  private

  def set_user
    @user = User.find_by email: params[:session][:email].downcase
  end

  def reject_locked!
    if @user.locked?
      redirect_to new_session_path, alert: I18n.t('users.sessions.locked')
    else
      log_in @user
      redirect_to root_url, success: I18n.t('users.sessions.success', name: @user.name)
    end
  end
end
