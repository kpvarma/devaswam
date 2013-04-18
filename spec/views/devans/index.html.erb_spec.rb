require 'spec_helper'

describe "devans/index" do
  before(:each) do
    assign(:devans, [
      stub_model(Devan,
        :name => "Name",
        :description => "MyText",
        :temple => nil
      ),
      stub_model(Devan,
        :name => "Name",
        :description => "MyText",
        :temple => nil
      )
    ])
  end

  it "renders a list of devans" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
