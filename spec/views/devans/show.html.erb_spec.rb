require 'spec_helper'

describe "devans/show" do
  before(:each) do
    @devan = assign(:devan, stub_model(Devan,
      :name => "Name",
      :description => "MyText",
      :temple => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/MyText/)
    rendered.should match(//)
  end
end
