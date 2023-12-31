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

  it 'should return [0,0] when guesser fails to guess the combination with green' do
    expect(mastermind.evaluate(['green'],['red'])).to eq([0,0])
  end

  it 'should return [2,0] when guesser guest the combination with two colors' do
    expect(mastermind.evaluate(%w[blue red], %w[blue red])).to eq([2, 0])
  end

  it 'should return [2,0] when guesser guest the combination with two colors red and blue' do
    expect(mastermind.evaluate(%w[red blue], %w[red blue])).to eq([2, 0])
  end

  it 'should return [0,1] when guesser guest the combination with two colors red and blue' do
    expect(mastermind.evaluate(%w[red yellow], %w[blue red])).to eq([0, 1])
  end

  it 'should return [0,1] when guesser inputs [blue, red] and win combination is [red, green]' do
    expect(mastermind.evaluate(%w[red green], %w[blue red])).to eq([0, 1])
  end
end