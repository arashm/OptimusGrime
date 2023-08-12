require_relative 'spec_helper'

RSpec.describe OptimusGrime::ParseInput do
  context 'when an invalid imput has been provided' do
    let(:args) { '5x5' }

    it 'raises an error' do
      expect { OptimusGrime::ParseInput.parse(args) }.to raise_error(OptimusGrime::InputError)
    end
  end

  context 'when a valid input has been provided' do
    let(:args) { '15x5 (1, 3) (4, 41)' }

    it 'returns a match data with required locations' do
      expect(OptimusGrime::ParseInput.parse(args)).to eq({ board: [15, 5], locations: [[1, 3], [4, 41]] })
    end
  end
end
