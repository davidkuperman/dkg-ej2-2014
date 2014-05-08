require 'spec_helper'

describe "ceos/edit" do
  before(:each) do
    @ceo = assign(:ceo, stub_model(Ceo,
      :name => "MyString",
      :email => "MyString"
    ))
  end

  it "renders the edit ceo form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", ceo_path(@ceo), "post" do
      assert_select "input#ceo_name[name=?]", "ceo[name]"
      assert_select "input#ceo_email[name=?]", "ceo[email]"
    end
  end
end
