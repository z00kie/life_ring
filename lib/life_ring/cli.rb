class LifeRing::CLI
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
    puts " What can I help you with today?"
  end


      def list_topics
        LifeRing::Scraper.assign_data
        Topic.all.each.with_index(1) do |topic, index|
          if topic.name
            puts "#{index}. #{topic.name}"
            binding.pry
          end
        end
      end

      def list_organizations
        LifeRing::Scraper.assign_data
        Topic.all.each.with_index(1) do |org|
          if topic.organization
            puts "#{org.organization}  ..........  #{org.phone}"
          end
        end
      end


  def  menu
    input = nil
    while input != "exit"
      puts " "
      puts "What can I help you with today? Please enter a menu number to see hotlines, 'menu' for the main menu, or 'exit' to leave."
      puts " "
      input = gets.strip.downcase

      if input.to_i > 0
        puts topics[input.to_i - 1]
      elsif input == "menu"
        topics
      else
        puts "I'm sorry, I didn't understand. Please type 'menu' or 'exit'."
      end
    end
  end

  def goodbye
    puts " "
    puts "Thank you for using Life Ring. We wish you a happy and healthy future!"
    puts " "
  end

end
