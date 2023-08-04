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

    def dfs(target)
        queue = self
        self = self.children

        # while queue.length > 0 

        # end
    end
end