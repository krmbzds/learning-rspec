require 'rails_helper'

RSpec.describe "zombies/show", :type => :view do
  before(:each) do
    @zombie = assign(:zombie, Zombie.create!(
      :name => "Name",
      :weapons => "Weapons",
      :brain => false,
      :dead => false,
      :weight => 1.5,
      :height => 1.5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Weapons/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/1.5/)
  end
end
