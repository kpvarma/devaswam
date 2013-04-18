class Admin::DevansController < ApplicationController
  
  layout "admin"
  before_filter { |c| c.set_nav "devan" }
  
  # GET /devans
  # GET /devans.json
  def index
    @devans = Devan.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @devans }
    end
  end

  # GET /devans/1
  # GET /devans/1.json
  def show
    @devan = Devan.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @devan }
    end
  end

  # GET /devans/new
  # GET /devans/new.json
  def new
    @devan = Devan.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @devan }
    end
  end

  # GET /devans/1/edit
  def edit
    @devan = Devan.find(params[:id])
  end

  # POST /devans
  # POST /devans.json
  def create
    @devan = Devan.new(params[:devan])

    respond_to do |format|
      if @devan.save
        format.html { redirect_to @devan, notice: 'Devan was successfully created.' }
        format.json { render json: @devan, status: :created, location: @devan }
      else
        format.html { render action: "new" }
        format.json { render json: @devan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /devans/1
  # PUT /devans/1.json
  def update
    @devan = Devan.find(params[:id])

    respond_to do |format|
      if @devan.update_attributes(params[:devan])
        format.html { redirect_to @devan, notice: 'Devan was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @devan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /devans/1
  # DELETE /devans/1.json
  def destroy
    @devan = Devan.find(params[:id])
    @devan.destroy

    respond_to do |format|
      format.html { redirect_to devans_url }
      format.json { head :no_content }
    end
  end
end
