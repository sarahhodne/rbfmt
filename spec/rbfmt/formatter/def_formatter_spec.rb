require 'spec_helper'

describe Rbfmt::Formatter::DefFormatter do
  context 'without arguments' do
    it 'does not print parentheses' do
      formatter = described_class.new(parse('def foo_bar(); end'))
      expect(formatter.format).to eql("def foo_bar\nend")
    end
  end

  context 'with arguments' do
    it 'wraps the arguments with parentheses' do
      formatter = described_class.new(parse('def foo bar; end'))
      expect(formatter.format).to eql("def foo(bar)\nend")
    end
  end
end
