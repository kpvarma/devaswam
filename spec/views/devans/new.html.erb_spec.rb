require 'spec_helper'

describe "devans/new" do
  before(:each) do
    assign(:devan, stub_model(Devan,
      :name => "MyString",
      :description => "MyText",
      :temple => nil
    ).as_new_record)
  end

  it "renders new devan form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", devans_path, "post" do
      assert_select "input#devan_name[name=?]", "devan[name]"
      assert_select "textarea#devan_description[name=?]", "devan[description]"
      assert_select "input#devan_temple[name=?]", "devan[temple]"
    end
  end
end
