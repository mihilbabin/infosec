class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper

  def set_labs
    @labs = Lab.order(created_at: :asc)
  end

  def authenticate_user!
    redirect_to new_session_path, alert: t('users.sessions.unauthenticated') unless logged_in?
  end
end
