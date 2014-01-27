require 'spec_helper'

describe Rbfmt::Formatter::ConstFormatter do
  it 'formats unscoped constants' do
    formatter = described_class.new(parse('FooBar'))
    expect(formatter.format).to eql('FooBar')
  end

  it 'formats scoped constants' do
    formatter = described_class.new(parse('Foo::Bar'))
    expect(formatter.format).to eql('Foo::Bar')
  end
end
