class Topic
  attr_accessor :name, :url, :topic

  @@all = []

  def initialize
    @@all << self
    @topic = topic
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end
end
