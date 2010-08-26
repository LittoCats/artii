require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe AsciiArty::Base do
  before(:each) do
    @arty = AsciiArty::Base.new
  end
  describe '#new' do
    it "should create a new instance" do
      @arty.should be_an_instance_of(AsciiArty::Base)
    end

    it "should have an empty output" do
      @arty.output.should be_empty
    end
  end

  describe "#asciify" do
    it "should produce an output" do
      @arty.asciify 'hello world'
      @arty.output.should_not be_empty
    end
  end
end