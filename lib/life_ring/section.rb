class LifeRing::Section
  attr_accessor

  @@all = []

  def initialize
    @@all << self
    @section = section
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end
end
