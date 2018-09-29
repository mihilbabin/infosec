class ApplicationController < ActionController::Base
  def set_labs
    @labs = Lab.order(created_at: :asc)
  end
end
