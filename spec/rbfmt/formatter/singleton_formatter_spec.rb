require 'spec_helper'

describe Rbfmt::Formatter::SingletonFormatter do
  it 'formats self' do
    formatter = described_class.new(parse('self'))
    expect(formatter.format).to eql('self')
  end

  it 'formats true' do
    formatter = described_class.new(parse('true'))
    expect(formatter.format).to eql('true')
  end

  it 'formats false' do
    formatter = described_class.new(parse('false'))
    expect(formatter.format).to eql('false')
  end

  it 'formats nil' do
    formatter = described_class.new(parse('nil'))
    expect(formatter.format).to eql('nil')
  end
end
