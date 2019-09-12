class Game
  attr_accessor :hangman, :player, :word, :recieved_letters, :correct_letters

  WORDS = ["hello", "world", "cactus", "wife", "donkey", "pizza", "giant", "final", "fantasy", "bacon","donut", "one", "two", "three", "four", "five","six", "seven","eight", "nine", "ten", "night", "day", "alive", "welcome"]

  def initialize(hangman = Hangman::Hangman.new, player = Player.new)
    self.hangman = hangman
    self.player = player
    self.word = generate_new_word
    self.recieved_letters = []
    self.correct_letters = []
    start
  end

  def start
    puts "## Welcome to Hangman ##"
    puts "------------------------"
    puts " "
    turn
  end

  def generate_new_word
    WORDS.sample
  end

  def print_letters
    array = self.word.split("")
    array.each do |character|
      print self.recieved_letters.include?(character) ? " #{character} " : " _ "
    end
    puts " "
  end

  def turn
    self.hangman.display
    print_recieved_letters
    print_letters
    player_input = self.player.get_input

    if self.recieved_letters.include?(player_input)
      puts "You've already chosen that"
      turn
    else
      self.recieved_letters << player_input
    end

    unless self.word.split("").include?(self.recieved_letters.last)
        self.hangman.marks += 1 
    else
        self.correct_letters << player_input
    end

    if won?
      self.hangman.display
      print_letters
      puts "Congratulations! The word is #{self.word}!"
      play_again?
    elsif lost?
      self.hangman.display
      puts "You lose! The word was #{self.word}"
      play_again?
    else
      turn
    end
  end

  def print_recieved_letters
    puts "Here are the letters you've chosen: #{self.recieved_letters.join(" ")}"
  end

  def won?
    self.correct_letters.sort.join("").downcase == self.word.split("").uniq.sort.join("").downcase
  end

  def lost?
    self.hangman.marks == 6
  end

  def play_again?
    puts "Want to play again?"
    input = gets.strip

    if input && input.downcase == "y"
      Game.new
    else
      puts "goodbye"
      exit
    end
  end
end