class LifeRing::CLI
  attr_accessor :topic, :name, :url, :section


  def call
    opening
    LifeRing::Scraper.main_menu_info
    hotline
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
    puts " "
    puts "The National Suicide Prevention Lifeline is a national network of local crisis centers that provides free and confidential emotional support to people in suicidal crisis or emotional distress 24 hours a day, 7 days a week. We're committed to improving crisis services and advancing suicide prevention by empowering individuals, advancing professional best practices, and building awareness."
    puts " "
  end

  def hotline
    puts " "
    puts "We can all help prevent suicide. The Lifeline provides 24/7, free and confidential support for people in distress, prevention and crisis resources for you or your loved ones, and best practices for professionals."
    puts " "
    puts "1(800)273-8255"
    puts " "
  end

  def list_topics
    Topic.all.each.with_index(1) do |topic, index|
      puts "#{index}. #{topic.name}"
    end
    puts ""
  end

  def topic_sections(topic)
    LifeRing::Scraper.page_menu(topic)
    puts "#{topic.name}"
    puts ""
    puts "#{topic.summary}"
    puts ""
  end

  def  menu
    input = nil
    while input != "exit"
      puts "Enter a number to see more information, or type 'menu' to see the menu or 'exit' to leave."
      input = gets.strip.downcase
      topic = Topic.all[input.to_i - 1]
      if input == "menu"
        puts " "
        list_topics
      elsif input.to_i > 0
        puts " "
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
