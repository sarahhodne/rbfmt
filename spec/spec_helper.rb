GEM_ROOT = File.expand_path('../../', __FILE__)
$LOAD_PATH.unshift(File.join(GEM_ROOT, 'lib'))

require 'parser/current'
require 'rbfmt'

RSpec.configure do |rspec|
  rspec.expect_with(:rspec) do |c|
    c.syntax = :expect
  end
end

def parse(code)
  Parser::CurrentRuby.parse(code)
end
