#require_relative 'spec_helper'
require 'pry'
require 'pry-nav'
require 'enumerator_ex'


describe EnumeratorEx do  

  before(:each) do    
  end

  describe "#cat" do
    before(:each) do
      @e1 = [1,2]
      @e2 = %w[a b c]
      @e3 = %w[d e f g]
    end

    it "returns an enumerator" do
      EnumeratorEx.cat(@e1,@e2,@e3).should be_an_instance_of Enumerator
    end

    it "correctly cats values" do
      enum = EnumeratorEx.cat(@e1,@e2,@e3)
      enum.next.should == 1
      enum.next.should == 2
      enum.next.should == 'a'
      enum.next.should == 'b'
      enum.next.should == 'c'
      enum.next.should == 'd'
      enum.next.should == 'e'
      enum.next.should == 'f'
      enum.next.should == 'g'
      expect{ enum.next}.to raise_error StopIteration
    end

  end

  describe "#weave" do

    it "returns an enumerator" do
      EnumeratorEx.weave( [1,2,3], [4,5,6]).should be_an_instance_of Enumerator
    end

    describe "when called with different sized enums" do
      before(:each) do
        @e1 = [1,2]
        @e2 = %w[a b c]
        @e3 = %w[d e f g]
      end

      it "weaves all until all are done" do
        EnumeratorEx.weave(@e1,@e2,@el).should be_an_instance_of Enumerator
      end

      it "correctly weaves" do
        enum = EnumeratorEx.weave(@e1,@e2,@e3)
     #   binding.pry
        enum.to_a.should == [1,'a','d',2,'b','e','c','f','g']
      end
      

      it "correctly weaves" do
        enum = EnumeratorEx.weave(@e1,@e2,@e3)
        enum.next.should == 1
        enum.next.should == 'a'
        enum.next.should == 'd'
        enum.next.should == 2
        enum.next.should == 'b'
        enum.next.should == 'e'
        enum.next.should ==  'c'
        enum.next.should == 'f'
        enum.next.should == 'g'
        expect { enum.next}.to raise_error StopIteration
      end

    end
  end

  

  
  
end
