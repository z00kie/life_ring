class LifeRing::CLI
  attr_accessor :topic, :name, :url, :section


  def call
    opening
    LifeRing::Scraper.main_menu_info
    hotline
    menu
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
    puts "For help, call 1(800)273-8255"
    puts " "
  end

  def list_topics
    LifeRing::Topic.all.collect.with_index(1) do |topic, index|
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
    puts "Please call #{topic.contact}"
    puts ""
  end

  def  menu
    input = nil
    list_topics
    puts "Enter a number to see more information, or type 'menu' to see the menu or 'exit' to leave."
    input = gets.strip.upcase
    if input == "exit"
      goodbye
    else
      topic = LifeRing::Topic.all[input.to_i - 1]
      selection = input.to_i
      if selection != 0
        user_input = LifeRing::Topic.find(input)
        topic_sections(user_input)
        puts "Would you like to learn more about another topic? Y/N"
        again = gets.strip.upcase
        if again == "Y" || again == "YES"
          menu
        else
          goodbye
        end
      else
        puts "Please try again."
        puts ""
        menu
      end
    end
  end

  def goodbye
    puts " "
    puts "Thank you for using Life Ring. We wish you a happy and healthy future!"
    puts " "
  end

end
