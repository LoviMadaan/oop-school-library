require_relative '../nameable'
require 'rspec'

describe Nameable do
  context 'When testing the Nameable class' do
    it 'it should return a nameable object' do
      nameable = Nameable.new
      expect(nameable).to be_kind_of(Nameable)
    end
  end

  it 'should return the correct name instance' do
    nameable = Nameable.new
    expect(nameable).to be_instance_of(Nameable)
  end

  describe '#correct_name' do
    it 'raises NotImplementedError' do
      nameable = Nameable.new
      expect { nameable.correct_name }.to raise_error(NotImplementedError)
    end
  end
end
