require_relative 'spec_helper'

RSpec.describe OptimusGrime::Board do
  describe '#initialize' do
    context 'when the board size is not valid' do
      it 'raises an error' do
        expect { OptimusGrime::Board.new(0, 0) }.to raise_error(OptimusGrime::BoardError)
        expect { OptimusGrime::Board.new(-1, -1) }.to raise_error(OptimusGrime::BoardError)
      end
    end

    context 'when the board size is valid' do
      it 'does not raise an error' do
        expect { OptimusGrime::Board.new(1, 1) }.not_to raise_error
      end
    end
  end

  describe '#valid_location?' do
    let(:board) { OptimusGrime::Board.new(5, 5) }

    context 'when the location in the boundries of the board' do
      it 'returns true' do
        expect(board.valid_location?(5, 5)).to be_truthy
      end
    end

    context 'when the location is not in the boundries of the board' do
      it 'returns false' do
        expect(board.valid_location?(6, 6)).to be_falsey
      end
    end
  end
end
