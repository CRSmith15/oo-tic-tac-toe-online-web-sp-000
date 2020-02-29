class TicTacToe

  def initialize(board = nil)
    @board = board || Array.new(9, " ")
  end

  def play
    @board = Array.new(9, " ")
    turn until over?
    won? ? puts("Congratulations #{winner}!") : puts("Cat's Game!")
    puts "Would you like to play again? (Y or N)"
    gets.strip.downcase == "y" || gets.strip.downcase == "yes" ? play : puts("Goodbye!")
  end
end