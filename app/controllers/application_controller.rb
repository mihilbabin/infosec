class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper

  def set_labs
    @labs = Lab.order(created_at: :asc)
  end
end
