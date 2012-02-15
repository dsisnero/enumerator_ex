module EnumeratorEx

  module Generators
    
    #Intersperse several iterables, until all are exhausted
    def weave(*enumerators)
      enums = enumerators.map{|e| e.to_enum}    
      result = Enumerator.new do |y|     
        while !enums.empty?
          loop_enum = enums.dup
          loop_enum.each_with_index do |enum,i|
            begin
              y << enum.next
            rescue StopIteration
              #raise StopIteration if enums.empty?
              enums.delete_at(i)
            end
          end
        end
        #raise StopIteration
      end
    end  

    def cat(*enumerators)
      enums = enumerators.map{|e| e.to_enum}
      result = Enumerator.new do |y|
        enums.each do |enum|
          loop do 
            y << enum.next
          end
        end
      end
      result
    end

  

  end

end
