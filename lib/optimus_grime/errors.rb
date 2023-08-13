module OptimusGrime
  class Errors < StandardError; end

  class InputError < Errors; end
  class BoardError < Errors; end
  class LocationError < Errors; end
end
