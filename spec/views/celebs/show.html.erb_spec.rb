require 'rails_helper'

RSpec.describe "celebs/show", :type => :view do
  before(:each) do
    @celeb = assign(:celeb, Celeb.create!(
      :first_name => "First Name",
      :last_name => "Last Name",
      :name => "Name",
      :bio => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
  end
end
