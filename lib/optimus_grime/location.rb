# frozen_string_literal: true

module OptimusGrime
  class Location
    attr_reader :x, :y

    def initialize(x, y)
      @x = x
      @y = y
    end

    def position
      [@x, @y]
    end
  end
end
