class Admin::DashboardController < ApplicationController
  
  layout "admin"
  before_filter { |c| c.set_nav "home" }
  
  # GET /admin/dashboard
  # GET /admin/dashboard.json
  def index
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @devans }
    end
  end
end