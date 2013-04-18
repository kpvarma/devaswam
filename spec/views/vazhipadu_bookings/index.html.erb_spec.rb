require 'spec_helper'

describe "vazhipadu_bookings/index" do
  before(:each) do
    assign(:vazhipadu_bookings, [
      stub_model(VazhipaduBooking,
        :user => nil,
        :vazhipadu => nil,
        :temple => nil,
        :devan => nil
      ),
      stub_model(VazhipaduBooking,
        :user => nil,
        :vazhipadu => nil,
        :temple => nil,
        :devan => nil
      )
    ])
  end

  it "renders a list of vazhipadu_bookings" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
