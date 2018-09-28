class IndexController < ApplicationController
  def index
  end

  def title_doc
    send_file "#{Rails.root}/app/assets/docs/title.docx"
  end
end
