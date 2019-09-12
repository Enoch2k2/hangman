class Hangman::Hangman
  attr_accessor :marks

  def initialize
    self.marks = 0
  end

  def display
    case marks
      when 0
        no_marks
      when 1
        one_mark
      when 2
        two_marks
      when 3
        three_marks
      when 4
        four_marks
      when 5
        five_marks
      when 6
        six_marks
    end
  end

  def no_marks
    puts " "
    puts "   ---|"
    puts "   |  |"
    puts "      |"
    puts "      |"
    puts "      |"
    puts "    -----"
    puts " "
  end

  def one_mark
    puts " "
    puts "   ---|"
    puts "   |  |"
    puts "   o  |"
    puts "      |"
    puts "      |"
    puts "    -----"
    puts " "
  end

  def two_marks
    puts " "
    puts "   ---|"
    puts "   |  |"
    puts "   o  |"
    puts "   |  |"
    puts "      |"
    puts "    -----"
    puts " "
  end

  def three_marks
    puts " "
    puts "   ---|"
    puts "   |  |"
    puts "   o  |"
    puts "   |  |"
    puts "    \\ |"
    puts "    -----"
    puts " "
  end

  def four_marks
    puts " "
    puts "   ---|"
    puts "   |  |"
    puts "   o  |"
    puts "   |  |"
    puts "  / \\ |"
    puts "    -----"
    puts " "
  end

  def five_marks
    puts " "
    puts "   ---|"
    puts "   |  |"
    puts "   o/ |"
    puts "   |  |"
    puts "  / \\ |"
    puts "    -----"
    puts " "
  end

  def six_marks
    puts " "
    puts "   ---|"
    puts "   |  |"
    puts "  \\o/ |"
    puts "   |  |"
    puts "  / \\ |"
    puts "    -----"
    puts " "
  end
end
