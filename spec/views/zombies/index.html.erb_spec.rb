require 'rails_helper'

RSpec.describe "zombies/index", :type => :view do
  before(:each) do
    assign(:zombies, [
      Zombie.create!(
        :name => "Name",
        :weapons => "Weapons",
        :brain => false,
        :dead => false,
        :weight => 1.5,
        :height => 1.5
      ),
      Zombie.create!(
        :name => "Name",
        :weapons => "Weapons",
        :brain => false,
        :dead => false,
        :weight => 1.5,
        :height => 1.5
      )
    ])
  end

  it "renders a list of zombies" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Weapons".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
  end
end
