require_relative 'spec_helper'

RSpec.describe OptimusGrime::Cursor do

  describe '#move_to' do
    context 'when cursor is at the starting position' do
      subject(:cursor) { described_class.new(0, 0) }
      let(:location) { OptimusGrime::Location.new(1, 3) }

      it 'returns the instructions to move to the given location' do
        cursor.move_to(location)
        expect(cursor.instructions).to eq([OptimusGrime::EAST, OptimusGrime::NORTH, OptimusGrime::NORTH, OptimusGrime::NORTH, OptimusGrime::CLEAN])
      end
    end

    context 'when cursor is not at the start position' do
      subject(:cursor) { described_class.new(4, 2) }
      let(:location) { OptimusGrime::Location.new(1, 3) }

      it 'returns the instructions to move to the given location' do
        cursor.move_to(location)
        expect(cursor.instructions).to eq([OptimusGrime::WEST, OptimusGrime::WEST, OptimusGrime::WEST, OptimusGrime::NORTH, OptimusGrime::CLEAN])
      end
    end

    context 'when cursor is already at the given location' do
      subject(:cursor) { described_class.new(4, 2) }
      let(:location) { OptimusGrime::Location.new(4, 2) }

      it 'returns the clean instructions' do
        cursor.move_to(location)
        expect(cursor.instructions).to eq([OptimusGrime::CLEAN])
      end
    end
  end
end
