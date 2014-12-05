require 'rails_helper'

RSpec.describe Zombie, :type => :model do

  # Refactor test using implicit subject
  it { should_not be_valid }

  # it 'is invalid without a name' do
  #   zombie = Zombie.new
  #   expect(zombie).not_to be_valid
  # end

  it "has a name that matches 'Tyrone Hayes'" do
    zombie = Zombie.new(:name => 'Tyrone 420 Hayes')
    expect(zombie.name).to match(/Tyrone \d\d\d Hayes/)
  end

  it 'changes the number of Zombies' do
    zombie = Zombie.new(:name => 'Dickbutt')
    expect { zombie.save }.to change { Zombie.count }.by(1)
  end

  it 'raises an error if saved without a name' do
    zombie = Zombie.new
    expect { zombie.save! }.to raise_error(
      ActiveRecord::RecordInvalid
    )
  end

end
