require 'spec_helper'

describe Rbfmt::Formatter::InspectFormatter do
  it 'formats regular symbols' do
    formatter = described_class.new(parse(':foobar'))
    expect(formatter.format).to eql(':foobar')
  end

  it 'formats symbols with special characters' do
    formatter = described_class.new(parse(":'foo bar'"))
    expect(formatter.format).to eql(':"foo bar"')
  end

  it 'formats strings' do
    formatter = described_class.new(parse("'foo bar'"))
    expect(formatter.format).to eql('"foo bar"')
  end
end
