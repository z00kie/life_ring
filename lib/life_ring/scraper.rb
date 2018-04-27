class LifeRing::Scraper
  attr_accessor :name, :url, :intro


  def self.grab_page
    # Scrapes website for data
    @doc = Nokogiri::HTML(open("https://suicidepreventionlifeline.org"))
    binding.pry
    @doc
  end

  def self.main_menu_info
      grab_page.css("div.im-struggling-grid.button").collect do |info|
        @topic = Topic.new
        @topic.name = info.css("p").text
        @topic.url = info.css("href")
        binding.pry
      end
    end
    #
    # def self.list_topics
    #   self.assign_data
    #   Topic.all.each.with_index(1) do |topic, index|
    #     if topic.name
    #       puts "#{index}. #{topic.name}"
    #       binding.pry
    #     end
    #   end
    # end

    # def self.list_organizations
    #   self.assign_data
    #   Topic.all.each.with_index(1) do |org|
    #     if topic.organization
    #       puts "#{org.organization}  ..........  #{org.phone}"
    #     end
    #   end
    # end


  def self.all
    @@all
  end
end
