require 'rails_helper'

RSpec.describe "endorsements/new", :type => :view do
  before(:each) do
    assign(:endorsement, Endorsement.new(
      :celeb_id => 1,
      :brand => "MyString",
      :amount => "MyString",
      :contract => "MyText",
      :image => "MyString"
    ))
  end

  it "renders new endorsement form" do
    render

    assert_select "form[action=?][method=?]", endorsements_path, "post" do

      assert_select "input#endorsement_celeb_id[name=?]", "endorsement[celeb_id]"

      assert_select "input#endorsement_brand[name=?]", "endorsement[brand]"

      assert_select "input#endorsement_amount[name=?]", "endorsement[amount]"

      assert_select "textarea#endorsement_contract[name=?]", "endorsement[contract]"

      assert_select "input#endorsement_image[name=?]", "endorsement[image]"
    end
  end
end
