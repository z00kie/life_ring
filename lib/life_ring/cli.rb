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
        Topic.all.each do |topic|
          puts "#{topic.name}"
        end
      end
      #
      # def list_organizations
      #   LifeRing::Scraper.assign_data
      #   Topic.all.each.with_index(1) do |org|
      #     if topic.organization
      #       puts "#{org.organization}  ..........  #{org.phone}"
      #     end
      #   end
      # end


  def  menu

  end

  def goodbye
    puts " "
    puts "Thank you for using Life Ring. We wish you a happy and healthy future!"
    puts " "
  end

end
