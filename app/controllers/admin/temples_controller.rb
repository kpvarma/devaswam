class Admin::TemplesController < ApplicationController
  
  layout "admin"
  before_filter { |c| c.set_nav "temples" }
  before_filter :parse_filters_from_url
  
  # GET /temples
  # GET /temples.json
  def index
    @temples = Temple.page(@current_page).per(@per_page)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @temples }
    end
  end

  # GET /temples/1
  # GET /temples/1.json
  def show
    @temple = Temple.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @temple }
    end
  end

  # GET /temples/new
  # GET /temples/new.json
  def new
    @temple = Temple.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @temple }
    end
  end

  # GET /temples/1/edit
  def edit
    @temple = Temple.find(params[:id])
  end

  # POST /temples
  # POST /temples.json
  def create
    @temple = Temple.new(params[:temple])

    respond_to do |format|
      if @temple.save
        format.html { redirect_to @temple, notice: 'Temple was successfully created.' }
        format.json { render json: @temple, status: :created, location: @temple }
      else
        format.html { render action: "new" }
        format.json { render json: @temple.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /temples/1
  # PUT /temples/1.json
  def update
    @temple = Temple.find(params[:id])

    respond_to do |format|
      if @temple.update_attributes(params[:temple])
        format.html { redirect_to @temple, notice: 'Temple was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @temple.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /temples/1
  # DELETE /temples/1.json
  def destroy
    @temple = Temple.find(params[:id])
    @temple.destroy

    respond_to do |format|
      format.html { redirect_to temples_url }
      format.json { head :no_content }
    end
  end
end
