class LifeRing::Scraper
  attr_accessor :name
  @@all = []

  def self.topics
    # Scrapes website for data
    doc = Nokogiri::HTML(open("http://www.pleaselive.org/hotlines"))
    # Assigns data to variable(s)
      doc.css(".vc_row.wpb_row.vc_row-fluid:nth-child(2)").each do |post|
        topic = self.new
        topic.title = post.css("h2").text
        topic.schedule = post.css(".date").text
        topic.description = post.css("p").text
      end

      puts "#{index}. #{topic.name}"
    end

    topic = self.new
    topic.name = "Hotline 1"
  end

  def self.all
    @@all
  end
end
