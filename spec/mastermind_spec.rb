require_relative '../src/mastermind'

describe Mastermind do
  it 'should return [1,0] when guesser guest the combination' do
    mastermind = Mastermind.new

    expect(mastermind.evaluate(['blue'],['blue'])).to eq([1,0])
  end

  it 'should return [0,0] when guesser fails to guess the combination' do
    mastermind = Mastermind.new

    expect(mastermind.evaluate(['red'],['blue'])).to eq([0,0])
  end

  it 'should return [0,0] when guesser fails to guess the combination with yellow' do
    mastermind = Mastermind.new

    expect(mastermind.evaluate(['yellow'],['red'])).to eq([0,0])
  end
end