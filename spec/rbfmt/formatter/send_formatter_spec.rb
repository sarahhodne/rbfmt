require 'spec_helper'

describe Rbfmt::Formatter::SendFormatter do
  context 'with a receiver' do
    context 'with arguments' do
      it 'formats the method call' do
        formatter = described_class.new(parse('foo.bar foobar'))
        expect(formatter.format).to eql('foo.bar(foobar)')
      end
    end

    context 'without arguments' do
      it 'formats the method call' do
        formatter = described_class.new(parse('foo.bar()'))
        expect(formatter.format).to eql('foo.bar')
      end
    end
  end

  context 'without a receiver' do
    context 'with arguments' do
      it 'formats the method call' do
        formatter = described_class.new(parse('bar foobar'))
        expect(formatter.format).to eql('bar(foobar)')
      end
    end

    context 'without arguments' do
      it 'formats the method call' do
        formatter = described_class.new(parse('bar()'))
        expect(formatter.format).to eql('bar')
      end
    end
  end
end
