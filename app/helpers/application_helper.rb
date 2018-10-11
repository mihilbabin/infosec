module ApplicationHelper
  def title(page_title)
    content_for(:title) { page_title }
  end

  def active_class?(test_path)
    request.path == test_path ? 'active' : ''
  end

  def flash_class(level)
    case level
    when :notice then 'alert alert-info'
    when :success then 'alert alert-success'
    when :error then 'alert alert-error'
    when :alert then 'alert alert-error'
    end
  end

end
