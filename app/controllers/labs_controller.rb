class LabsController < ApplicationController
  before_action :set_labs

  def show
    @lab = Lab.find params[:id]
  end

  def download
    
  end
  
end
