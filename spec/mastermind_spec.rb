require_relative '../src/mastermind'

describe Mastermind do
  it 'should return [1,0] when guesser guest the combination' do
    mastermind = Mastermind.new

    expect(mastermind.evaluate(['blue'],['blue'])).to eq([1,0])
  end
end