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
        new_parent.children << self
    end
end