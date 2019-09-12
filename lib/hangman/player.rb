class Player
  def get_input
    puts "Which letter do you choose?"

    input = gets.strip
    if input
      input[0]
    else
      puts "You must choose a letter"
      get_input
    end
  end
end