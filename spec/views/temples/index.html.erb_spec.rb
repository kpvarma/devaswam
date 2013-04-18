require 'spec_helper'

describe "temples/index" do
  before(:each) do
    assign(:temples, [
      stub_model(Temple,
        :name => "Name",
        :description => "MyText"
      ),
      stub_model(Temple,
        :name => "Name",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of temples" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
