require 'rails_helper'

RSpec.describe "endorsements/show", :type => :view do
  before(:each) do
    @endorsement = assign(:endorsement, Endorsement.create!(
      :celeb_id => 1,
      :brand => "Brand",
      :amount => "Amount",
      :contract => "MyText",
      :image => "Image"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Brand/)
    expect(rendered).to match(/Amount/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Image/)
  end
end
