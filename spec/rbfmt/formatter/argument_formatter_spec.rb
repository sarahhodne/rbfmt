require 'spec_helper'

describe Rbfmt::Formatter::ArgumentFormatter do
  context 'with no arguments' do
    it 'prints nothing' do
      formatter = described_class.new(parse('def foo(); end').children[1])
      expect(formatter.format).to eql('')
    end
  end

  context 'with arguments' do
    it 'wraps them in parentheses' do
      args = parse('def foo(bar, baz); end').children[1]
      formatter = described_class.new(args)
      expect(formatter.format).to eql('(bar, baz)')
    end
  end

  context 'with optional arguments' do
    it 'puts spaces around the equals sign' do
      args = parse('def foo(bar=baz); end').children[1]
      formatter = described_class.new(args)
      expect(formatter.format).to eql('(bar = baz)')
    end
  end

  context 'with rest (splat) arguments' do
    it 'formats the argument' do
      args = parse('def foo(*args); end').children[1]
      formatter = described_class.new(args)
      expect(formatter.format).to eql('(*args)')
    end
  end

  context 'with block arguments' do
    it 'formats the argument' do
      args = parse('def foo(&block); end').children[1]
      formatter = described_class.new(args)
      expect(formatter.format).to eql('(&block)')
    end
  end
end
