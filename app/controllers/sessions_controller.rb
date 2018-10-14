class SessionsController < ApplicationController
  before_action :set_labs, except: :destroy

  def new
    redirect_to root_url if logged_in?
  end

  def create
    user = User.find_by email: params[:session][:email].downcase
    if user&.authenticate(params[:session][:password])
      log_in user
      redirect_to root_url
    else
      flash.now[:error] = I18n.t('users.sessions.error')
      render :new
    end
  end

  def destroy
    log_out
    redirect_to root_url, notice: I18n.t('users.sessions.logout')
  end

  private
end
