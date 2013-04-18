require 'spec_helper'

describe "devans/edit" do
  before(:each) do
    @devan = assign(:devan, stub_model(Devan,
      :name => "MyString",
      :description => "MyText",
      :temple => nil
    ))
  end

  it "renders the edit devan form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", devan_path(@devan), "post" do
      assert_select "input#devan_name[name=?]", "devan[name]"
      assert_select "textarea#devan_description[name=?]", "devan[description]"
      assert_select "input#devan_temple[name=?]", "devan[temple]"
    end
  end
end
