require 'spec_helper'

describe "vazhipadus/index" do
  before(:each) do
    assign(:vazhipadus, [
      stub_model(Vazhipadu,
        :name => "Name",
        :description => "MyText",
        :temple => nil,
        :devan => nil,
        :rate => "9.99"
      ),
      stub_model(Vazhipadu,
        :name => "Name",
        :description => "MyText",
        :temple => nil,
        :devan => nil,
        :rate => "9.99"
      )
    ])
  end

  it "renders a list of vazhipadus" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
