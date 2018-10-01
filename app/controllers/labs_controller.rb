class LabsController < ApplicationController
  before_action :set_labs, except: :download
  before_action :set_lab

  def show; end

  def download
  end

  private

  def set_lab
    @lab = Lab.find params[:id]
  end  
end
