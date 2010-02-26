$:.unshift File.join(File.dirname(__FILE__))
require 'trunner_spec_helper'

describe "Logging" do

  before(:each) do
    @mc = MockClient.new(1,2,123)   
  end
  
  it "should get logger" do
    @mc.logger.class.should == Log4r::Logger
  end

  it "should get prefix" do
    @mc.log_prefix.should == "[T:001|I:002]"
  end
    
end
  