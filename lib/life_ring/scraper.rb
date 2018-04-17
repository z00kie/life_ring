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
      grab_data.each do |post|
        topic = self.new
        topic.name = post.css("h2").text
        topic.organization = post.css(".red-text").text
        topic.phone = post.css(".blue-text").text
      end
    end

    def list_topics
      self.assign_data
      Topic.all.each.with_index(1) do |topic, index|
        if topic.name
          puts "#{index}. #{topic.name}"
        end
      end
    end

    def list_organizations
      self.assign_data
      Topic.all.each.with_index(1) do |org|
        if topic.organization
          puts "#{org.organization}  ..........  #{org.phone}"
        end
      end
    end


  def self.all
    @@all
  end
end
