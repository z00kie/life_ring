class LifeRing::Topic
  attr_accessor :name, :summary, :contact
  attr_reader :url
  @@all = []

  def initialize(url)
    @url = url
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find(input)
    entry = input.to_i - 1
    all.find.with_index { |item, index| index == entry }
  end

  def self.reset_all
    @@all.clear
  end
end
