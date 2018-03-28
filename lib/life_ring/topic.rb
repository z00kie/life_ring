class LifeRing::Topic
  attr_accessor :name
  @@all = []

  def self.topics(url="http://www.pleaselive.org/hotlines")
    # Scrapes website for data
    doc = Nokogiri::HTML(open(url))
    # Assigns data to variable(s)
    doc.css(".red-right-border").each do |topic|

    binding.pry

    topic = self.new
    topic.name = "Hotline 1"
  end

  def self.all
    @@all
  end
end
