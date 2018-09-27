class ApplicationController < ActionController::Base
  before_action :set_labs

  def set_labs
    @labs = Lab.order(created_at: :asc)
  end
end
