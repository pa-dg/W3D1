require "byebug"

class Array
    
    def my_each(&prc)
        self.length.times do |i|    #3.times |0,1,2|
            prc.call(self[i])
        end

        self
    end
 
    def my_select(&block)
        result = []

        self.my_each do |ele|
            result << ele if block.call(ele)  
        end

        result 
    end
    
    def my_reject(&block)
          result = []

        self.my_each do |ele|
            result << ele if !block.call(ele)  
        end

        result 

    end

    def my_any?(&block)

        self.my_each do |ele|
            if block.call(ele)
                return true 
            end 
        end

        return false 
    end 

    def my_all?(&block)
         self.my_each do |ele|
            if !block.call(ele)
                return false
            end 
        end

        return true
    end

    def my_flatten
        flattened = []
        
        self.my_each do |ele|
            if !ele.is_a?(Array)
                flattened << ele
            else
                flattened += ele.my_flatten
            end
        end««

        flattened
    end

    def my_zip(*args)
        zipped = []
        
        (self.length).times do |i|      
            subarr = self[i]
        end   
            
            args.my_each do |arg|
                subarr << arg[i]
            end

            zipped << subarr
    end


    def my_rotate(rotation = 1)
        (rotation *-1).times do
            if rotation > 0
                self.unshift(self.pop)
            else
                self.push(self.shift)
            end
        end

        self        
    end

    def my_join(separator = "")
        joined = ""

        self.length.times do |i|
            if i != self.length - 1
                joined += self[i] + separator
            end
        end

        joined
    end

    def my_reverse
        reversed = []

        self.my_each { |ele| reversed.unshift(ele) } #keeps adding ele to the front which becomes first ele at every iteration
             
        reversed 
    end  
    
    
end

