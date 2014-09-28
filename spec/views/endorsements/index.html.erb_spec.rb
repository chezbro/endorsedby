require 'rails_helper'

RSpec.describe "endorsements/index", :type => :view do
  before(:each) do
    assign(:endorsements, [
      Endorsement.create!(
        :celeb_id => 1,
        :brand => "Brand",
        :amount => "Amount",
        :contract => "MyText",
        :image => "Image"
      ),
      Endorsement.create!(
        :celeb_id => 1,
        :brand => "Brand",
        :amount => "Amount",
        :contract => "MyText",
        :image => "Image"
      )
    ])
  end

  it "renders a list of endorsements" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Brand".to_s, :count => 2
    assert_select "tr>td", :text => "Amount".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Image".to_s, :count => 2
  end
end
