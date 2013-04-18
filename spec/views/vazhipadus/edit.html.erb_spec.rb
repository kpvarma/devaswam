require 'spec_helper'

describe "vazhipadus/edit" do
  before(:each) do
    @vazhipadu = assign(:vazhipadu, stub_model(Vazhipadu,
      :name => "MyString",
      :description => "MyText",
      :temple => nil,
      :devan => nil,
      :rate => "9.99"
    ))
  end

  it "renders the edit vazhipadu form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", vazhipadu_path(@vazhipadu), "post" do
      assert_select "input#vazhipadu_name[name=?]", "vazhipadu[name]"
      assert_select "textarea#vazhipadu_description[name=?]", "vazhipadu[description]"
      assert_select "input#vazhipadu_temple[name=?]", "vazhipadu[temple]"
      assert_select "input#vazhipadu_devan[name=?]", "vazhipadu[devan]"
      assert_select "input#vazhipadu_rate[name=?]", "vazhipadu[rate]"
    end
  end
end
