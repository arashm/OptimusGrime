# frozen_string_literal: true

module OptimusGrime
  class Board
    attr_reader :x, :y

    def initialize(x, y)
      raise BoardError.new('Board size is not valid') if x == 0 && y == 0
      raise BoardError.new('Board size is not valid') if x < 0 || y < 0

      @x = x
      @y = y
    end

    def valid_location?(x, y)
      x <= @x && y <= @y
    end
  end
end
