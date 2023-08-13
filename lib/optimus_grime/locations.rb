# frozen_string_literal: true

module OptimusGrime
  class Locations
    include Enumerable

    attr_reader :locations

    def initialize(board, locations)
      @board = board
      @locations = locations.map { |location| add_location(*location) }
    end

    def add_location(x, y)
      raise LocationError.new('Location is out of boundry of the board') unless @board.valid_location?(x, y)

      Location.new(x, y)
    end

    def each
      @locations.each { |location| yield location }
    end
  end
end
