require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe VazhipaduBookingsController do

  # This should return the minimal set of attributes required to create a valid
  # VazhipaduBooking. As you add validations to VazhipaduBooking, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    { "user" => "" }
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # VazhipaduBookingsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all vazhipadu_bookings as @vazhipadu_bookings" do
      vazhipadu_booking = VazhipaduBooking.create! valid_attributes
      get :index, {}, valid_session
      assigns(:vazhipadu_bookings).should eq([vazhipadu_booking])
    end
  end

  describe "GET show" do
    it "assigns the requested vazhipadu_booking as @vazhipadu_booking" do
      vazhipadu_booking = VazhipaduBooking.create! valid_attributes
      get :show, {:id => vazhipadu_booking.to_param}, valid_session
      assigns(:vazhipadu_booking).should eq(vazhipadu_booking)
    end
  end

  describe "GET new" do
    it "assigns a new vazhipadu_booking as @vazhipadu_booking" do
      get :new, {}, valid_session
      assigns(:vazhipadu_booking).should be_a_new(VazhipaduBooking)
    end
  end

  describe "GET edit" do
    it "assigns the requested vazhipadu_booking as @vazhipadu_booking" do
      vazhipadu_booking = VazhipaduBooking.create! valid_attributes
      get :edit, {:id => vazhipadu_booking.to_param}, valid_session
      assigns(:vazhipadu_booking).should eq(vazhipadu_booking)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new VazhipaduBooking" do
        expect {
          post :create, {:vazhipadu_booking => valid_attributes}, valid_session
        }.to change(VazhipaduBooking, :count).by(1)
      end

      it "assigns a newly created vazhipadu_booking as @vazhipadu_booking" do
        post :create, {:vazhipadu_booking => valid_attributes}, valid_session
        assigns(:vazhipadu_booking).should be_a(VazhipaduBooking)
        assigns(:vazhipadu_booking).should be_persisted
      end

      it "redirects to the created vazhipadu_booking" do
        post :create, {:vazhipadu_booking => valid_attributes}, valid_session
        response.should redirect_to(VazhipaduBooking.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved vazhipadu_booking as @vazhipadu_booking" do
        # Trigger the behavior that occurs when invalid params are submitted
        VazhipaduBooking.any_instance.stub(:save).and_return(false)
        post :create, {:vazhipadu_booking => { "user" => "invalid value" }}, valid_session
        assigns(:vazhipadu_booking).should be_a_new(VazhipaduBooking)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        VazhipaduBooking.any_instance.stub(:save).and_return(false)
        post :create, {:vazhipadu_booking => { "user" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested vazhipadu_booking" do
        vazhipadu_booking = VazhipaduBooking.create! valid_attributes
        # Assuming there are no other vazhipadu_bookings in the database, this
        # specifies that the VazhipaduBooking created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        VazhipaduBooking.any_instance.should_receive(:update_attributes).with({ "user" => "" })
        put :update, {:id => vazhipadu_booking.to_param, :vazhipadu_booking => { "user" => "" }}, valid_session
      end

      it "assigns the requested vazhipadu_booking as @vazhipadu_booking" do
        vazhipadu_booking = VazhipaduBooking.create! valid_attributes
        put :update, {:id => vazhipadu_booking.to_param, :vazhipadu_booking => valid_attributes}, valid_session
        assigns(:vazhipadu_booking).should eq(vazhipadu_booking)
      end

      it "redirects to the vazhipadu_booking" do
        vazhipadu_booking = VazhipaduBooking.create! valid_attributes
        put :update, {:id => vazhipadu_booking.to_param, :vazhipadu_booking => valid_attributes}, valid_session
        response.should redirect_to(vazhipadu_booking)
      end
    end

    describe "with invalid params" do
      it "assigns the vazhipadu_booking as @vazhipadu_booking" do
        vazhipadu_booking = VazhipaduBooking.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        VazhipaduBooking.any_instance.stub(:save).and_return(false)
        put :update, {:id => vazhipadu_booking.to_param, :vazhipadu_booking => { "user" => "invalid value" }}, valid_session
        assigns(:vazhipadu_booking).should eq(vazhipadu_booking)
      end

      it "re-renders the 'edit' template" do
        vazhipadu_booking = VazhipaduBooking.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        VazhipaduBooking.any_instance.stub(:save).and_return(false)
        put :update, {:id => vazhipadu_booking.to_param, :vazhipadu_booking => { "user" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested vazhipadu_booking" do
      vazhipadu_booking = VazhipaduBooking.create! valid_attributes
      expect {
        delete :destroy, {:id => vazhipadu_booking.to_param}, valid_session
      }.to change(VazhipaduBooking, :count).by(-1)
    end

    it "redirects to the vazhipadu_bookings list" do
      vazhipadu_booking = VazhipaduBooking.create! valid_attributes
      delete :destroy, {:id => vazhipadu_booking.to_param}, valid_session
      response.should redirect_to(vazhipadu_bookings_url)
    end
  end

end
