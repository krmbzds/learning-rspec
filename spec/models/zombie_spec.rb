require 'rails_helper'

RSpec.describe Zombie, :type => :model do

  it 'is invalid without a name' do
    zombie = @Zombie.new
    zombie.should_not be_valid
  end

end
