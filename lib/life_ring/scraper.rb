class LifeRing::Scraper
  attr_accessor :name, :url, :topic, :section, :title, :data


  def self.grab_page
    # Scrapes website for data
    @doc = Nokogiri::HTML(open("https://suicidepreventionlifeline.org/"))
    @doc
  end

  def self.main_menu_info
      grab_page.css("div.im-struggling-grid a.button--struggle").collect do |info|
        @topic = Topic.new(info.attr("href"))
        @topic.name = info.css("span.button--struggle__text").text
        # @topic.url = info.attr("href")
      end
    end

  def self.page_menu(topic)
        @details = Nokogiri::HTML(open(topic.url))
        @details.css("main.main").collect do |info|
          topic.summary = info.css("div.intro").text
          topic.title = info.css("h3").text
          binding.pry
        end
      end
    end
