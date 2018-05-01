class Section
  attr_accessor :section, :name, :data

  @@all = []

  def initialize
    @@all << self
    @section = section
    @data = data
    @name = name
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end
end
