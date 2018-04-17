class LifeRing::Scraper
  attr_accessor :name, :organization, :phone
  @@all = []

  def initialize
    @@all << self
  end

  def grab_page
    # Scrapes website for data
    doc = Nokogiri::HTML(open("http://www.pleaselive.org/hotlines"))
  end

  def grab_data
    self.grab_page.css(".vc_row.wpb_row.vc_row-fluid:nth-child(2)")
  end

  def assign_data
    # Assigns data to variable(s)
      .each do |post|
        topic = self.new
        topic.name = post.css("h2").text
        topic.organization = post.css(".red-text").text
        topic.phone = post.css(".blue-text").text
      end
    end

  def self.all
    @@all
  end
end
