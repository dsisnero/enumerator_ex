require 'enumerator_ex/generators'
require 'enumerable_lz/enumerable_ex'
require File.join( File.dirname(__FILE__) , 'generators')
require File.join(File.dirname(__FILE__),'..','enumerator_ex')

# module EnumerableEx

#   module InstanceMethods
#     def weave(*enums)
#       enums[0,0] = self
#       self.class.weave(enums)
#     end

    

    

#   end

# end



module Enumerable

  extend EnumeratorEx::Generators
  

  def weave(*enums)
    enums[0,0] = self.to_enum
    result = EnumeratorEx.weave(*enums)
  end
  
  def cat(*enums)
    enums[0,0] = self.to_enum
    result = EnumeratorEx.cat(*enums)
  end

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

