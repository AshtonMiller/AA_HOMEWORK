
require "set"


class GraphNode

    attr_accessor :value, :neighbors

    def initialize(value)
        self.value = value
        self.neighbors = []
    end 

    def add_neighbor(node)
        self.neighbors.push(node) 
    end 
    
   


end 

 def bfs(starting_node, target_value)
         queue = [starting_node]
         visited = Set.new()
        while !queue.empty?
            node = queue.shift
            if !visited.include?(node)
            return node.value if node.value == target_value
            visited.add(node)
            queue += node.neighbors
            puts visited 
            end 
        end

    nil
end



