require 'spec_helper'

describe Rbfmt::Formatter::ModuleFormatter do
  it 'formats a module block' do
    formatter = described_class.new(parse('module FooBar; end'))
    expect(formatter.format).to eql("module FooBar\nend")
  end

  it 'formats a class block' do
    formatter = described_class.new(parse('class FooBar; end'))
    expect(formatter.format).to eql("class FooBar\nend")
  end

  it 'formats a singleton class block' do
    formatter = described_class.new(parse('class << foo; end'))
    expect(formatter.format).to eql("class << foo\nend")
  end

  it 'formats a class with a superclass' do
    formatter = described_class.new(parse('class Foo < Bar; end'))
    expect(formatter.format).to eql("class Foo < Bar\nend")
  end
end
