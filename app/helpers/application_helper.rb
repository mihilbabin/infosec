module ApplicationHelper
  def title(page_title)
    content_for(:title) { page_title }
  end

  def active_class?(test_path)
    request.path == test_path ? 'active' : ''
  end
end
