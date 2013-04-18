require 'spec_helper'

describe "vazhipadu_bookings/edit" do
  before(:each) do
    @vazhipadu_booking = assign(:vazhipadu_booking, stub_model(VazhipaduBooking,
      :user => nil,
      :vazhipadu => nil,
      :temple => nil,
      :devan => nil
    ))
  end

  it "renders the edit vazhipadu_booking form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", vazhipadu_booking_path(@vazhipadu_booking), "post" do
      assert_select "input#vazhipadu_booking_user[name=?]", "vazhipadu_booking[user]"
      assert_select "input#vazhipadu_booking_vazhipadu[name=?]", "vazhipadu_booking[vazhipadu]"
      assert_select "input#vazhipadu_booking_temple[name=?]", "vazhipadu_booking[temple]"
      assert_select "input#vazhipadu_booking_devan[name=?]", "vazhipadu_booking[devan]"
    end
  end
end
