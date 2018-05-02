class LifeRing::CLI
  attr_accessor :topic, :name, :url, :section


  def call
    opening
    list_topics
    menu
    goodbye
  end

  def opening
    puts " "
    puts " #       #####   #####   #####"
    puts " #         #     #       #    "
    puts " #         #     ####    #### "
    puts " #         #     #       #    "
    puts " ######  #####   #       #####"
    puts " "
    puts " ####    #####  ##   #  #### "
    puts " #   #     #    # #  #  #    "
    puts " ####      #    #  # #  #  ##"
    puts " #   #     #    #   ##  #   #"
    puts " #    #  #####  #    #  #####"
    puts " "
  end

  def list_topics
    LifeRing::Scraper.main_menu_info
    Topic.all.each.with_index(1) do |topic, index|
      puts "#{index}. #{topic.name}"
    end
  end

  def topic_sections(topic)
    LifeRing::Scraper.page_menu(topic)
    Topic.all.each.with_index(1) do |title, index|
      puts "#{index}. #{title.name}"
    end
  end

  def  menu
    input = nil
    while input != "exit"
      puts "Please enter the number of your selection or 'exit' to leave."
      input = gets.strip.downcase
      topic = Topic.all[input.to_i - 1]
      if input == "menu"
        list_topics
      elsif input.to_i > 0
        topic_sections(topic)
      end
    end
  end

  def goodbye
    puts " "
    puts "Thank you for using Life Ring. We wish you a happy and healthy future!"
    puts " "
  end

end
