class IndexController < ApplicationController
  before_action :set_labs, except: [:title_doc]

  def index; end

  def title_doc
    send_file "#{Rails.root}/app/assets/docs/title.docx"
  end
end
