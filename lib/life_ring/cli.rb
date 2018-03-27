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

    OR type 'more' for more

    DOC
  end
end
