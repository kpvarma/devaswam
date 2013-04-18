require 'spec_helper'

describe "temples/new" do
  before(:each) do
    assign(:temple, stub_model(Temple,
      :name => "MyString",
      :description => "MyText"
    ).as_new_record)
  end

  it "renders new temple form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", temples_path, "post" do
      assert_select "input#temple_name[name=?]", "temple[name]"
      assert_select "textarea#temple_description[name=?]", "temple[description]"
    end
  end
end
