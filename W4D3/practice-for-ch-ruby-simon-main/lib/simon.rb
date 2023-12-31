class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
    play
  end

  def play
    while game_over == false
      take_turn
    end
      if game_over == true
        game_over_message
        reset_game
      end
  end

  def take_turn
    show_sequence
    require_sequence
    if game_over == false 
      round_success_message 
      @sequence_length += 1
    end
  end

  def show_sequence
    add_random_color
    puts seq
  end

  def require_sequence
    input = gets.chomp
    @game_over = true if @seq.join(" ") != input

  end

  def add_random_color
    @seq << COLORS.sample
  end

  def round_success_message
    puts "round success"
  end

  def game_over_message
    puts "Game over"
  end

  def reset_game
    @sequence_length = 1
    @game_over = false
    @seq = []
    puts "new game"
    play
  end
end