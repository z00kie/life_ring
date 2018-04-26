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
        puts "1. Abortion"
        puts "2. Abuse"
        # LifeRing::Scraper.assign_data
        # Topic.all.each.with_index(1) do |topic, index|
        #   if topic.name
        #     puts "#{index}. #{topic.name}"
        #     binding.pry
        #   end
        # end
      end

      def list_organizations
        puts "National Domestic Violence Hotline 1-800-799-SAFE"
        puts "Post Abortion Counseling 1-800-228-0332"
        puts "Post Abortion Project Rachel 1-800-5WE-CARE"
        # LifeRing::Scraper.assign_data
        # Topic.all.each.with_index(1) do |org|
        #   if topic.organization
        #     puts "#{org.organization}  ..........  #{org.phone}"
        #   end
        # end
      end


  def  menu
    input = nil
    while input != "exit"
      puts " "
      puts "What can I help you with today? Please enter a menu number to see hotlines, 'menu' for the main menu, or 'exit' to leave."
      puts " "
      input = gets.strip.downcase

      if input.to_i > 0
        puts list_topics[input.to_i - 1]
      elsif input == "menu"
        list_topics
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
