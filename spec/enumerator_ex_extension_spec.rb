require File.join(File.dirname(__FILE__), 'spec_helper')

require 'enumerator_ex/extension'

describe "#partition" do
  it "yields 2 enumerators" do
    enum = (1..1000).each
    e1,e2 = enum.partition_lz{|i| i.even?}
    e1.should be_kind_of Enumerator
    e2.should be_kind_of Enumerator      
  end

  it "works correctly" do
    enum = (1..10).each
    e1,e2 = enum.partition{|i| i.even?}
    e1.to_a.should == [2,4,6,8,10]
    e2.to_a.should == [1,3,5,7,9]
  end

  it "should do it lazily" do
    even, odd = (1..Float::INFINITY).each.partition_lz{|n| n.even?}
    even.transform{|i| i * 2}.take(5).to_a.should == [4,8,12,16,20]
    odd.transform{|i| i + 1}.take(3).to_a.should == [2,4,6]
  end

  it "adds weave" do
    enum = [1,2,3]
    b = %w[a b]
    c = %w[d e f]
  #  binding.pry
    enum.weave(b,c).to_a.should == [1,'a','d',2,'b','e',3,'f']
  end

  it 'adds cat' do
    enum = [1,2,3].each
    b = %w[a b]
    c = %w[d e f]
    enum.cat(b,c).to_a.should == [1,2,3,'a','b','d','e','f']
  end
  

end
