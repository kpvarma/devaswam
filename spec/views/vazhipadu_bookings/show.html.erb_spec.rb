require 'spec_helper'

describe "vazhipadu_bookings/show" do
  before(:each) do
    @vazhipadu_booking = assign(:vazhipadu_booking, stub_model(VazhipaduBooking,
      :user => nil,
      :vazhipadu => nil,
      :temple => nil,
      :devan => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(//)
  end
end
