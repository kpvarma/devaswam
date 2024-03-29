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

describe VazhipadusController do

  # This should return the minimal set of attributes required to create a valid
  # Vazhipadu. As you add validations to Vazhipadu, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    { "name" => "MyString" }
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # VazhipadusController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all vazhipadus as @vazhipadus" do
      vazhipadu = Vazhipadu.create! valid_attributes
      get :index, {}, valid_session
      assigns(:vazhipadus).should eq([vazhipadu])
    end
  end

  describe "GET show" do
    it "assigns the requested vazhipadu as @vazhipadu" do
      vazhipadu = Vazhipadu.create! valid_attributes
      get :show, {:id => vazhipadu.to_param}, valid_session
      assigns(:vazhipadu).should eq(vazhipadu)
    end
  end

  describe "GET new" do
    it "assigns a new vazhipadu as @vazhipadu" do
      get :new, {}, valid_session
      assigns(:vazhipadu).should be_a_new(Vazhipadu)
    end
  end

  describe "GET edit" do
    it "assigns the requested vazhipadu as @vazhipadu" do
      vazhipadu = Vazhipadu.create! valid_attributes
      get :edit, {:id => vazhipadu.to_param}, valid_session
      assigns(:vazhipadu).should eq(vazhipadu)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Vazhipadu" do
        expect {
          post :create, {:vazhipadu => valid_attributes}, valid_session
        }.to change(Vazhipadu, :count).by(1)
      end

      it "assigns a newly created vazhipadu as @vazhipadu" do
        post :create, {:vazhipadu => valid_attributes}, valid_session
        assigns(:vazhipadu).should be_a(Vazhipadu)
        assigns(:vazhipadu).should be_persisted
      end

      it "redirects to the created vazhipadu" do
        post :create, {:vazhipadu => valid_attributes}, valid_session
        response.should redirect_to(Vazhipadu.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved vazhipadu as @vazhipadu" do
        # Trigger the behavior that occurs when invalid params are submitted
        Vazhipadu.any_instance.stub(:save).and_return(false)
        post :create, {:vazhipadu => { "name" => "invalid value" }}, valid_session
        assigns(:vazhipadu).should be_a_new(Vazhipadu)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Vazhipadu.any_instance.stub(:save).and_return(false)
        post :create, {:vazhipadu => { "name" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested vazhipadu" do
        vazhipadu = Vazhipadu.create! valid_attributes
        # Assuming there are no other vazhipadus in the database, this
        # specifies that the Vazhipadu created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Vazhipadu.any_instance.should_receive(:update_attributes).with({ "name" => "MyString" })
        put :update, {:id => vazhipadu.to_param, :vazhipadu => { "name" => "MyString" }}, valid_session
      end

      it "assigns the requested vazhipadu as @vazhipadu" do
        vazhipadu = Vazhipadu.create! valid_attributes
        put :update, {:id => vazhipadu.to_param, :vazhipadu => valid_attributes}, valid_session
        assigns(:vazhipadu).should eq(vazhipadu)
      end

      it "redirects to the vazhipadu" do
        vazhipadu = Vazhipadu.create! valid_attributes
        put :update, {:id => vazhipadu.to_param, :vazhipadu => valid_attributes}, valid_session
        response.should redirect_to(vazhipadu)
      end
    end

    describe "with invalid params" do
      it "assigns the vazhipadu as @vazhipadu" do
        vazhipadu = Vazhipadu.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Vazhipadu.any_instance.stub(:save).and_return(false)
        put :update, {:id => vazhipadu.to_param, :vazhipadu => { "name" => "invalid value" }}, valid_session
        assigns(:vazhipadu).should eq(vazhipadu)
      end

      it "re-renders the 'edit' template" do
        vazhipadu = Vazhipadu.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Vazhipadu.any_instance.stub(:save).and_return(false)
        put :update, {:id => vazhipadu.to_param, :vazhipadu => { "name" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested vazhipadu" do
      vazhipadu = Vazhipadu.create! valid_attributes
      expect {
        delete :destroy, {:id => vazhipadu.to_param}, valid_session
      }.to change(Vazhipadu, :count).by(-1)
    end

    it "redirects to the vazhipadus list" do
      vazhipadu = Vazhipadu.create! valid_attributes
      delete :destroy, {:id => vazhipadu.to_param}, valid_session
      response.should redirect_to(vazhipadus_url)
    end
  end

end
