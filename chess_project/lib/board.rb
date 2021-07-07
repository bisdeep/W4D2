require_relative 'piece.rb'

class Board
    attr_accessor :grid

    

    def initialize()
        @grid = Array.new(8) {Array.new(8) }
    end

    def [](pos)
        row, col = pos[0], pos[1]
        @grid[row][col]
    end

    def []=(pos, val)
        row, col = pos[0], pos[1]
        @grid[row][col] = val
    end


    def move_piece(start_pos, end_pos)
        if self[start_pos].nil?
            raise "There is no piece at [start pos]"

        elsif !(self[end_pos].nil?)
            raise "Cannot move there!"
        end
        #move piece from start_pos into the end_pos.
        piece = self[start_pos]
        self[start_pos] = nil
        self[end_pos] = piece
        
    end

    def valid_pos?(pos)

    end

    def add_piece(piece, pos)

    end
    
    def checkmate?(color)

    end

    def in_check?(color)

    end

    def find_king(color)

    end

    def pieces

    end
    
    def dup

    end

    def move_piece!(color, start_pos, end_pos)
        
    end
end
