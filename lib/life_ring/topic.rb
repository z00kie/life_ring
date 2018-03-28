class LifeRing::Topic
  attr_accessor :name
  @@all = []

  def self.topics(url="www.pleaselive.org/hotlines")
    # Scrapes website for data
    doc = Nokogiri::HTML.css(open(url))
    # Assigns data to variable(s)

    topic = self.new
    topic.name = "Hotline 1"
  end

  def self.all
    @@all
  end
end
