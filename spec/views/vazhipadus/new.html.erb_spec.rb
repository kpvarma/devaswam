require 'spec_helper'

describe "vazhipadus/new" do
  before(:each) do
    assign(:vazhipadu, stub_model(Vazhipadu,
      :name => "MyString",
      :description => "MyText",
      :temple => nil,
      :devan => nil,
      :rate => "9.99"
    ).as_new_record)
  end

  it "renders new vazhipadu form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", vazhipadus_path, "post" do
      assert_select "input#vazhipadu_name[name=?]", "vazhipadu[name]"
      assert_select "textarea#vazhipadu_description[name=?]", "vazhipadu[description]"
      assert_select "input#vazhipadu_temple[name=?]", "vazhipadu[temple]"
      assert_select "input#vazhipadu_devan[name=?]", "vazhipadu[devan]"
      assert_select "input#vazhipadu_rate[name=?]", "vazhipadu[rate]"
    end
  end
end
