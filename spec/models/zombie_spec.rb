require 'rails_helper'

RSpec.describe Zombie, :type => :model do

  it 'is invalid without a name' do
    zombie = Zombie.new
    expect(zombie).not_to be_valid
  end

  it "has a name that matches 'Tyrone Hayes'" do
    zombie = Zombie.new(:name => 'Tyrone 420 Hayes')
    expect(zombie.name).to match(/Tyrone \d\d\d Hayes/)
  end

end
