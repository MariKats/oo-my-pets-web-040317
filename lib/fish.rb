class Fish
  attr_accessor :mood, :owner
  attr_reader :name

  def initialize(name)
    @name = name
    @mood = "nervous"
  end

  def owner_name
    self.owner.name
  end
end
