class ApplicationController < ActionController::Base
  protect_from_forgery
  
  # Used for displaying navbar active
  # * This will set @nav_selected attribute 
  # * @nav_selected is used in layouts/admin/header.html.erb to set class="active"
  # == Usage
  #   class Admin::TemplesController
  #     before_filter { |c| c.set_nav "temples" }
  #     ....
  def set_nav(name)
    @nav_selected = name
  end
  
  # This functon will parse the current page value from params
  # * Initializes @current_page instance variable with the value in params, first time when it calls
  # * register this function as a helper method to make it available in views 
  def current_page
    @current_page ||= params[:page] || "1"
  end
  helper_method :current_page
  
  # This functon will parse the per page value from params
  # * Initializes @per_page instance variable with the value in params, first time when it calls
  # * 
  # * register this function as a helper method to make it available in views 
  def per_page
    @per_page ||= params[:per_page] || "10"
    @per_page = "10" if @per_page && @per_page.to_i > 250
  end
  helper_method :per_page
  
  # This functon will parse the page offset value from params
  # * Initializes @offset instance variable with the value in params, first time when it calls
  # * register this function as a helper method to make it available in views
  def offset
    @offset = (@current_page.to_i - 1) * (@per_page.to_i)
  end
  helper_method :offset
  
  # Call this function 
  # == Usage
  #   class Admin::TemplesController
  #     before_filter :parse_filters_from_url
  def parse_filters_from_url
    current_page
    per_page
    offset
  end
  
end
