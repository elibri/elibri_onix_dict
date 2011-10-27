require 'helper'


describe Elibri::ONIX::Dict do

  it "should be able to establish its version" do
    assert_match /\d+\.\d+\.\d+/, Elibri::ONIX::Dict::Version::STRING
  end

end
