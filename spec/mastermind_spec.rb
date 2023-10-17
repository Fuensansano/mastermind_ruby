require_relative '../src/mastermind'

describe Mastermind do
  let(:mastermind) { Mastermind.new }

  it 'should return [1,0] when guesser guest the combination' do
    expect(mastermind.evaluate(['blue'],['blue'])).to eq([1,0])
  end

  it 'should return [0,0] when guesser fails to guess the combination' do
    expect(mastermind.evaluate(['red'],['blue'])).to eq([0,0])
  end

  it 'should return [0,0] when guesser fails to guess the combination with yellow' do
    expect(mastermind.evaluate(['yellow'],['red'])).to eq([0,0])
  end
end