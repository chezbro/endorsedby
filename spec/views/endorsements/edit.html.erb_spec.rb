require 'rails_helper'

RSpec.describe "endorsements/edit", :type => :view do
  before(:each) do
    @endorsement = assign(:endorsement, Endorsement.create!(
      :celeb_id => 1,
      :brand => "MyString",
      :amount => "MyString",
      :contract => "MyText",
      :image => "MyString"
    ))
  end

  it "renders the edit endorsement form" do
    render

    assert_select "form[action=?][method=?]", endorsement_path(@endorsement), "post" do

      assert_select "input#endorsement_celeb_id[name=?]", "endorsement[celeb_id]"

      assert_select "input#endorsement_brand[name=?]", "endorsement[brand]"

      assert_select "input#endorsement_amount[name=?]", "endorsement[amount]"

      assert_select "textarea#endorsement_contract[name=?]", "endorsement[contract]"

      assert_select "input#endorsement_image[name=?]", "endorsement[image]"
    end
  end
end
