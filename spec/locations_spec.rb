require_relative 'spec_helper'

RSpec.describe OptimusGrime::Locations do
  describe '#add_location' do
    let(:board) { OptimusGrime::Board.new(5, 5) }
    let(:locations) { OptimusGrime::Locations.new(board, [[1, 3]]) }

    context 'when the location is in the boundries of the board' do
      it 'returns a location object' do
        expect(locations.add_location(1, 3)).to be_a(OptimusGrime::Location)
      end
    end

    context 'when the location is not in the boundries of the board' do
      it 'raises an error' do
        expect { locations.add_location(6, 6) }.to raise_error(OptimusGrime::LocationError)
      end
    end
  end
end
