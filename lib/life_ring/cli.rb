class LifeRing::CLI
  attr_accessor :topic, :name, :url


  def call
    LifeRing::Scraper.main_menu_info
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
    Topic.all.each.with_index(1) do |topic, index|
      puts "#{index}. #{topic.name}"
    end
  end

  def topic_sections
    Section.all.each.with_index(1) do |title, index|
      puts "#{index}. #{title.name}"
    end
  end

  def  menu
    input = nil
    while input != "exit"
      puts "Please enter the number of your selection:"
      input = gets.strip.downcase
      if input.to_i > 0
        topic_sections
      elsif input == "menu"
        list_topics
      end
    end
  end

  def goodbye
    puts " "
    puts "Thank you for using Life Ring. We wish you a happy and healthy future!"
    puts " "
  end

end
