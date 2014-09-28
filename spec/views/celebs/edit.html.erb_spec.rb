require 'rails_helper'

RSpec.describe "celebs/edit", :type => :view do
  before(:each) do
    @celeb = assign(:celeb, Celeb.create!(
      :first_name => "MyString",
      :last_name => "MyString",
      :name => "MyString",
      :bio => "MyText"
    ))
  end

  it "renders the edit celeb form" do
    render

    assert_select "form[action=?][method=?]", celeb_path(@celeb), "post" do

      assert_select "input#celeb_first_name[name=?]", "celeb[first_name]"

      assert_select "input#celeb_last_name[name=?]", "celeb[last_name]"

      assert_select "input#celeb_name[name=?]", "celeb[name]"

      assert_select "textarea#celeb_bio[name=?]", "celeb[bio]"
    end
  end
end
