class VazhipaduBookingsController < ApplicationController
  # GET /vazhipadu_bookings
  # GET /vazhipadu_bookings.json
  def index
    @vazhipadu_bookings = VazhipaduBooking.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @vazhipadu_bookings }
    end
  end

  # GET /vazhipadu_bookings/1
  # GET /vazhipadu_bookings/1.json
  def show
    @vazhipadu_booking = VazhipaduBooking.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @vazhipadu_booking }
    end
  end

  # GET /vazhipadu_bookings/new
  # GET /vazhipadu_bookings/new.json
  def new
    @vazhipadu_booking = VazhipaduBooking.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @vazhipadu_booking }
    end
  end

  # GET /vazhipadu_bookings/1/edit
  def edit
    @vazhipadu_booking = VazhipaduBooking.find(params[:id])
  end

  # POST /vazhipadu_bookings
  # POST /vazhipadu_bookings.json
  def create
    @vazhipadu_booking = VazhipaduBooking.new(params[:vazhipadu_booking])

    respond_to do |format|
      if @vazhipadu_booking.save
        format.html { redirect_to @vazhipadu_booking, notice: 'Vazhipadu booking was successfully created.' }
        format.json { render json: @vazhipadu_booking, status: :created, location: @vazhipadu_booking }
      else
        format.html { render action: "new" }
        format.json { render json: @vazhipadu_booking.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /vazhipadu_bookings/1
  # PUT /vazhipadu_bookings/1.json
  def update
    @vazhipadu_booking = VazhipaduBooking.find(params[:id])

    respond_to do |format|
      if @vazhipadu_booking.update_attributes(params[:vazhipadu_booking])
        format.html { redirect_to @vazhipadu_booking, notice: 'Vazhipadu booking was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @vazhipadu_booking.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vazhipadu_bookings/1
  # DELETE /vazhipadu_bookings/1.json
  def destroy
    @vazhipadu_booking = VazhipaduBooking.find(params[:id])
    @vazhipadu_booking.destroy

    respond_to do |format|
      format.html { redirect_to vazhipadu_bookings_url }
      format.json { head :no_content }
    end
  end
end
