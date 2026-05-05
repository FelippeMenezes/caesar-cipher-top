# frozen_string_literal: true

require './lib/caesar_cipher'

describe 'caesar_cipher' do
  it 'returns a new string with each caracther position changed by a number ' do
    expect(caesar_cipher('Aa', 5)).to eq(+'Ff')
  end

  it 'works with upcase letters' do
    expect(caesar_cipher('CC', 1)).to eq('DD')
  end

  it 'works with downcase letters' do
    expect(caesar_cipher('uu', 2)).to eq('ww')
  end

  it 'works with punctuation' do
    expect(caesar_cipher('Hello, world!', 10)).to eq('Rovvy, gybvn!')
  end

  it 'works with large positve number' do
    expect(caesar_cipher('Test', 89)).to eq('Epde')
  end

  it 'works with empty string' do
    expect(caesar_cipher('', 12)).to eq('')
  end

  it 'works with negative number' do
    expect(caesar_cipher('GgHh', -2)).to eq('EeFf')
  end
  it 'works with large negative number' do
    expect(caesar_cipher('AaBb', -55)).to eq('XxYy')
  end
end
