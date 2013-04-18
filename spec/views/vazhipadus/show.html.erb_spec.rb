require 'spec_helper'

describe "vazhipadus/show" do
  before(:each) do
    @vazhipadu = assign(:vazhipadu, stub_model(Vazhipadu,
      :name => "Name",
      :description => "MyText",
      :temple => nil,
      :devan => nil,
      :rate => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/MyText/)
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(/9.99/)
  end
end
