require 'pry'
class Pawn < Piece
  def move_valid?(new_position)
    #parameter == move.last
    vertical_steps = row_change(new_position)
    # binding.pry
    if same_column?(@position, new_position)
       return (vertical_steps == 2 || vertical_steps == 1)
    else
      if Board.new.at(new_position)
        return (vertical_steps.abs == 2 || vertical_steps.abs == 1)
      else return false
      end
    end
  end

  def column(position)
      position[0]
  end

  def same_column?(old_position, new_position)
    column(old_position) == column(new_position)
  end

  def row_change(new_position)
    if @color == :white
      new_position.chars[1].to_i - @position.chars[1].to_i
    elsif @color == :black
      @position.chars[1].to_i - new_position.chars[1].to_i
    end
  end
end
