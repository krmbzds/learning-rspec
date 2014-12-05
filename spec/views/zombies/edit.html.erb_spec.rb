require 'rails_helper'

RSpec.describe "zombies/edit", :type => :view do
  before(:each) do
    @zombie = assign(:zombie, Zombie.create!(
      :name => "MyString",
      :weapons => "MyString",
      :brain => false,
      :dead => false,
      :weight => 1.5,
      :height => 1.5
    ))
  end

  it "renders the edit zombie form" do
    render

    assert_select "form[action=?][method=?]", zombie_path(@zombie), "post" do

      assert_select "input#zombie_name[name=?]", "zombie[name]"

      assert_select "input#zombie_weapons[name=?]", "zombie[weapons]"

      assert_select "input#zombie_brain[name=?]", "zombie[brain]"

      assert_select "input#zombie_dead[name=?]", "zombie[dead]"

      assert_select "input#zombie_weight[name=?]", "zombie[weight]"

      assert_select "input#zombie_height[name=?]", "zombie[height]"
    end
  end
end
