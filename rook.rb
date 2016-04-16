class Rook < Piece
  def initialize(color, position)
    super(color, position)
  end

  def move_valid?(new_position)
    @position.char[0] == new_position.char[0] ||
      @position.char[1] == new_position.char[1];
  end
end
