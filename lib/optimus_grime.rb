# frozen_string_literal: true

require_relative 'optimus_grime/version'
require_relative 'optimus_grime/errors'
require_relative 'optimus_grime/constants'
require_relative 'optimus_grime/parse_input'
require_relative 'optimus_grime/board'
require_relative 'optimus_grime/locations'
require_relative 'optimus_grime/location'
require_relative 'optimus_grime/cursor'

module OptimusGrime
  def self.start(args)
    parsed_input = ParseInput.parse(args.join(' '))
    board = Board.new(parsed_input[:board][0], parsed_input[:board][1])
    locations = Locations.new(board, parsed_input[:locations])
    cursor = Cursor.new(0, 0)
    locations.each { |location| cursor.move_to(location) }

    puts cursor.instructions.join
  end
end
