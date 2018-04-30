class LifeRing::Scraper
  attr_accessor :name, :url, :topic


  def self.grab_page
    # Scrapes website for data
    @doc = Nokogiri::HTML(open("https://suicidepreventionlifeline.org/"))
    @doc
  end

  def self.main_menu_info
      grab_page.css("div.im-struggling-grid a.button--struggle").collect do |info|
        @topic = Topic.new
        @topic.name = info.css("span.button--struggle__text").text
        @topic.url = info.attr("href")
      end
    end

  def self.all
    @@all
  end
end
