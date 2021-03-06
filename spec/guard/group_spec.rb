require 'spec_helper'

describe Guard::Group do

  describe ".initialize" do
    it "accepts a name as a string and provides an accessor for it (returning a symbol)" do
      described_class.new('foo').name.should eql :foo
    end

    it "accepts a name as a symbol and provides an accessor for it (returning a symbol)" do
      described_class.new(:foo).name.should eql :foo
    end

    it "accepts options and provides an accessor for it" do
      described_class.new('foo', :halt_on_fail => true).options.should == { :halt_on_fail => true }
    end
  end

end
