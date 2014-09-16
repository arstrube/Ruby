class << self; alias_method :inc, :include; remove_method :include; end
require 'rspec'
inc RSpec::Matchers
expect([1,2,3]).to include(1)

require 'shell'
class T; def s;@s;end; def pushd dir;s.pushd(dir);end; def popd;s.popd;end; def initialize;@s=Shell.new;end; end

t=T.new
t.pushd("..")
t.popd

describe "T" do 
  subject { T.new }
  it "can push directory"
  it "can pop directory"
end  
