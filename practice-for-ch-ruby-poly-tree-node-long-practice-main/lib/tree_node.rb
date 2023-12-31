class PolyTreeNode
    def initialize(value)
        @parent = nil # instance
        @children = [] # array of instances
        @value = value # string
    end

    def parent
        @parent
    end

    def children
        @children
    end

    def value
        @value
    end
    
    def parent=(new_parent) # nil or an instance
        @parent.children.delete(self) if @parent != nil && @parent.children.include?(self)  
        @parent = new_parent
        if new_parent == nil   
            return nil
        elsif !new_parent.children.include?(self)
            new_parent.children << self
        end
    end

    def add_child(child)
        child.parent = self
        # @children << child
    end

    def remove_child(child)
        raise "Node is not a child" unless self.children.include?(child)
        child.parent = nil
    end

    def inspect
        return "<# Value: #{@value} Parent: #{@parent} Children: #{@children} "
    end

    # def dfs(target)
    #     tree = self.dup
    #     stack = self
    #     self = self.children
    #     while stack.length > 0 
    #         if stack[-1] == target
    #             return self
    #         elsif stack[-1] != target
    #             stack.pop
    #             stack << stack[-1].children
    #         end
    #     end
    # end

    def dfs(target)
        return self if self.value == target
        return nil if self.children.empty?
        # nodes = self
        self.children.each do |node| 
            result = node.dfs(target)
            return result unless result.nil?
        end
        nil
    end

    def bfs(target)
        queue = [self]

        while queue.length > 0
            if queue[0].value == target
                return queue[0]
            else
                queue.shift
                queue += queue[0].children
            end
        end

        return  nil
    end
    
end