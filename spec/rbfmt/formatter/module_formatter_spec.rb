require 'spec_helper'

describe Rbfmt::Formatter::ModuleFormatter do
  it 'formats a module block' do
    formatter = described_class.new(parse('module FooBar; end'))
    expect(formatter.format).to eql("module FooBar\nend")
  end
end
