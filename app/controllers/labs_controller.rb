class LabsController < ApplicationController
  before_action :set_labs, except: :download
  before_action :set_lab
  before_action :authenticate_user!, only: :show, if: -> { @lab.partial_name == 'lab_4' }

  def show; end

  def download
    send_file "#{Rails.root}/app/assets/docs/#{@lab.asset_name}"
  rescue ActionController::MissingFile => exception
    logger.info "Rendering 404: #{exception.message}"
    render file: "#{Rails.root}/public/404.html", status: 404, layout: false
  end

  private

  def set_lab
    @lab = Lab.find params[:id]
  end
end
