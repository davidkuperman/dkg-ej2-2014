require 'spec_helper'

describe "ceos/new" do
  before(:each) do
    assign(:ceo, stub_model(Ceo,
      :name => "MyString",
      :email => "MyString"
    ).as_new_record)
  end

  it "renders new ceo form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", ceos_path, "post" do
      assert_select "input#ceo_name[name=?]", "ceo[name]"
      assert_select "input#ceo_email[name=?]", "ceo[email]"
    end
  end
end
