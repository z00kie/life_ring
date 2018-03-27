class LifeRing::CLI
  def call
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
    topics
    menu
    goodbye
  end

  def topics
    puts <<-DOC
    1. Abortion
    2. Abuse
    3. Addiction
    4. Cancer
    5. Care Givers
    6. Christian Counseling
    7. Chronic Illness/Pain
    8. Crisis #'s for Teens under 18
    9. Crisis #'s for Any Age
    10. Crisis Pregnancy

    DOC

    @hotlines = LifeRing::Topic.hotline_list
  end

  def  menu
    input = nil
    while input != "exit"
      puts " "
      puts "What can I help you with today? Please enter a menu number to see hotlines, 'menu' for the main menu, or 'exit' to leave."
      puts " "

      input = gets.strip.downcase
      case input
      when "1"
        puts " "
        puts "-----------------"
        puts " "
        puts "..ABORTION.."
        puts " "
        puts "(###)###-#### - Abortion Group"
        puts "(###)###-#### - Abortion Support"
        puts "(###)###-#### - Abortion Society"
        puts " "
        puts "-----------------"
      when "2"
        puts " "
        puts "-----------------"
        puts " "
        puts "..ABUSE.."
        puts " "
        puts "(###)###-#### - Abuse Group"
        puts "(###)###-#### - Abuse Support"
        puts "(###)###-#### - Abuse Society"
        puts " "
        puts "-----------------"
      when "menu"
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
