module ApplicationHelper

  def currentPath(path)
    return "active" if request.path == path
  end

end
