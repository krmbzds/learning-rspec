class Zombie < ActiveRecord::Base
  validates :name, :presence => true

  def new
    @zombie = Zombie.new
  end

end
