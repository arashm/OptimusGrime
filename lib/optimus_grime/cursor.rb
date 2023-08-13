# frozen_string_literal: true

module OptimusGrime
  class Cursor
    attr_reader :x, :y, :instructions

    def initialize(x, y)
      @x = x
      @y = y
      @instructions = []
    end

    def move_to(location)
      while current_position != location.position
        if @x < location.x
          move_east
        elsif @x > location.x
          move_west
        elsif @y > location.y
          move_south
        elsif @y < location.y
          move_north
        end
      end

      @instructions << CLEAN
    end

    private

    def current_position
      [@x, @y]
    end

    def move_east
      @x += 1
      @instructions << EAST
    end

    def move_west
      @x -= 1
      @instructions << WEST
    end

    def move_north
      @y += 1
      @instructions << NORTH
    end

    def move_south
      @y -= 1
      @instructions << SOUTH
    end
  end
end
