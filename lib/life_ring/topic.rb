class LifeRing::Topic
  attr_accessor :name
  @@all = []

  def self.topics
    # Scrapes website for data
    doc = Nokogiri::HTML(open("http://www.pleaselive.org/hotlines"))
    binding.pry
    # Assigns data to variable(s)
    doc.css(".vc_row.wpb_row.vc_row-fluid:nth-child(2)").each.with_index(1) do |topic, index|
      topic = self.new
      topic.name = topic.css(".red-right-border").text

      puts "#{index}. #{topic.name}"
    end

    topic = self.new
    topic.name = "Hotline 1"
  end

  def self.all
    @@all
  end
end
