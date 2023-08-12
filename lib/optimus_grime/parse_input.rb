# frozen_string_literal: true

module OptimusGrime
  class ParseInput
    INPUT_REGEX = Regexp.new('(\d+)x(\d+)(?:\s?\((\d+), (\d+)\))?')
    BOARD_REGEXP = Regexp.new('(\d+)x(\d+)')
    LOCATION_REGEXP = Regexp.new('(?:\s?\((\d+), (\d+)\))')

    def self.parse(args)
      raise InputError.new('Invalid input') unless INPUT_REGEX.match?(args)

      board = args.scan(BOARD_REGEXP).flatten.map(&:to_i)
      locations = args.scan(LOCATION_REGEXP).flatten.map(&:to_i).each_slice(2).to_a

      { board:, locations: }
    end
  end
end
