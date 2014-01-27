require 'spec_helper'

describe Rbfmt::Formatter::BeginFormatter do
  it 'formats consecutive statements' do
    formatter = described_class.new(parse("foo.bar\n\nfoo.baz"))
    expect(formatter.format).to eql("foo.bar\nfoo.baz")
  end
end
