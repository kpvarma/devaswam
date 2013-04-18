module ApplicationHelper
  
  def nav_active?(name)
    @nav_selected == name ? "active" : ""
  end
  
  
end
