class LifeRing::Scraper
  attr_accessor :name, :organization, :phone
  @@all = []

  def initialize
    @@all << self
  end

  def topics
    # Scrapes website for data
    doc = Nokogiri::HTML(open("http://www.pleaselive.org/hotlines"))
    # Assigns data to variable(s)
      doc.css(".vc_row.wpb_row.vc_row-fluid:nth-child(2)").each do |post|
        @topic = self.new
        @topic.name = post.css("h2").text
        @topic.organization = post.css(".red-text").text
        @topic.phone = post.css(".blue-text").text
      end
    end

    topic = self.new
    topic.name = "Hotline 1"
  end

  def self.all
    @@all
  end
end
