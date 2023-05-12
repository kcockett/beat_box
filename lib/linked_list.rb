class LinkedList
    attr_reader :head, :next_node
    def initialize
        @head = nil
    end

    def append(data)
        @head = Node.new (data)
    end

    def count
        #
    end

    def to_string
        #
    end
end