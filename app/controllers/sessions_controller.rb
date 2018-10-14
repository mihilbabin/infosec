class SessionsController < ApplicationController
  before_action :set_labs, except: :destroy

  def new; end

  def create
    user = User.find_by email: params[:session][:email].downcase
    if user&.authenticate(params[:session][:password])
      
    else
      flash[:error] = I18n.t('users.sessions.error')
      render :new
    end
  end

  def destroy
    
  end

  private
end
