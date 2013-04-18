require 'spec_helper'

describe "temples/edit" do
  before(:each) do
    @temple = assign(:temple, stub_model(Temple,
      :name => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit temple form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", temple_path(@temple), "post" do
      assert_select "input#temple_name[name=?]", "temple[name]"
      assert_select "textarea#temple_description[name=?]", "temple[description]"
    end
  end
end
