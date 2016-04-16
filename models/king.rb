class King < Piece
  def move_valid?(new_position)
    @position.chars[0] == new_position.chars[0] ||
      @position.chars[1] == new_position.chars[1];
  end
end
