class Admin::VazhipadusController < ApplicationController
  
  layout "admin"
  before_filter { |c| c.set_nav "vazhipadu" }
  
  # GET /vazhipadus
  # GET /vazhipadus.json
  def index
    @vazhipadus = Vazhipadu.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @vazhipadus }
    end
  end

  # GET /vazhipadus/1
  # GET /vazhipadus/1.json
  def show
    @vazhipadu = Vazhipadu.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @vazhipadu }
    end
  end

  # GET /vazhipadus/new
  # GET /vazhipadus/new.json
  def new
    @vazhipadu = Vazhipadu.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @vazhipadu }
    end
  end

  # GET /vazhipadus/1/edit
  def edit
    @vazhipadu = Vazhipadu.find(params[:id])
  end

  # POST /vazhipadus
  # POST /vazhipadus.json
  def create
    @vazhipadu = Vazhipadu.new(params[:vazhipadu])

    respond_to do |format|
      if @vazhipadu.save
        format.html { redirect_to @vazhipadu, notice: 'Vazhipadu was successfully created.' }
        format.json { render json: @vazhipadu, status: :created, location: @vazhipadu }
      else
        format.html { render action: "new" }
        format.json { render json: @vazhipadu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /vazhipadus/1
  # PUT /vazhipadus/1.json
  def update
    @vazhipadu = Vazhipadu.find(params[:id])

    respond_to do |format|
      if @vazhipadu.update_attributes(params[:vazhipadu])
        format.html { redirect_to @vazhipadu, notice: 'Vazhipadu was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @vazhipadu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vazhipadus/1
  # DELETE /vazhipadus/1.json
  def destroy
    @vazhipadu = Vazhipadu.find(params[:id])
    @vazhipadu.destroy

    respond_to do |format|
      format.html { redirect_to vazhipadus_url }
      format.json { head :no_content }
    end
  end
end
