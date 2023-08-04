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
        @parent = new_parent if !@parent
        if new_parent || !new_parent.children.include?(self) 
            new_parent.children << self
        end
    end

    def inspect
        return "<# Value: #{@value} Parent: #{@parent} Children: #{@children} "
    end
end