require 'enumerator_ex/generators'
require 'enumerable_lz/enumerable_ex'
require File.join( File.dirname(__FILE__) , 'generators')
require File.join(File.dirname(__FILE__),'..','enumerator_ex')


module Enumerable

  extend EnumeratorEx::Generators
  
  #Intersperse several enumerator/enumerables, until all are
  #exhausted.  Returns an Enumerator
  #
  #  enum = EnumeratorEx.weave([1,2,3],%w[a b], %w[g h i j]
  #  enum.to_a = [1, 'a', 'g',2,'b','h',3,'i','j']
  def weave(*enums)
    enums[0,0] = self.to_enum
    result = EnumeratorEx.weave(*enums)
  end

  # append enumerator/enumerables to the end.  returns an Enumerator
  #
  # enum = EnumeratorEx.cat([1,2,3],%w[a b], %w[g h i j])
  # enum.to_a = [1,2,3,'a','b','g','h','i','j']
  def cat(*enums)
    enums[0,0] = self.to_enum
    result = EnumeratorEx.cat(*enums)
  end

  # partition but in a lazy way
  def partition_lz(&block)
    e1 = self.to_enum
    e2 = self.to_enum
    e1_enum = e1.filter{|item| block.call(item)}
    e2_enum = e2.filter{|item| ! block.call(item)}
    [e1_enum,e2_enum]
  end
  

end

class Enumerator
  extend EnumeratorEx::Generators

  # include EnumerableEx::InstanceMethods
end

