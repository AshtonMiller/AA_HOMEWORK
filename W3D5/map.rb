class Map

    def initialize
        @stack = []
    end

    def set(key, val)
        @stack.each_with_index do |subArr, i|
            if subArr[0] == key
                @stack[i][1] = val
            else
                @stack << [key, val]
            end 
        end 
        val 
    end 

    def get(key)
        stack.each { |subArr| return subArr[1] if subArr[0] == key }
        nil
    end 

    def delete(key)
        stack.each { |subArr| @stack.delete(subArr) if subArr[0] == key }
    end 

    def show
        self.deep_dup(@stack)
    end 

    private 
    attr_reader :stack

    def deep_dup(arr)
        result = []
        arr.each do |ele|
            if ele.is_a?(Array)
                result += deep_dup(ele)
            else 
                result << ele
            end 
        end 
        result 
    end 

end 