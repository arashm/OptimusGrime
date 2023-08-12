# frozen_string_literal: true

require_relative 'optimus_grime/version'
require_relative 'optimus_grime/errors'
require_relative 'optimus_grime/parse_input'

module OptimusGrime
  def self.start(args)
    puts 'Optimus Grime is starting...'

    ParseInput.parse(args.join(' '))
  end
end
