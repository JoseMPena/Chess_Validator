class Knight < Piece
  def move_valid?(new_position)
    l_move(new_position) &&
      (!place_taken?(new_position) || @other_piece.color != @color)
  end

  def row_change(new_position)
    (row(@position) - row(new_position)).abs
  end

  def column_change(new_position)
    (column(@position) - column(new_position)).abs
  end

  def column(position)
    position[1].to_i
  end

  def row(position)
    position[0].ord
  end

  def place_taken?(position)
    (@other_piece = Board.new.at(position)) ? true : false
  end

  def l_move(position)
    (row_change(position) + column_change(position)) == 3
  end
end
