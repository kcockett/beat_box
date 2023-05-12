class LinkedList
    attr_reader :head, :next_node
    def initialize
        @head = nil
    end

    def append(data)
        @head = Node.new (data)
        data
    end

    def count
        if @head.nil?
            counter = 0
        else
            counter = 1
            current_node = @head
            while current_node.next_node !=nil
                current_node = current_node.next_node
                counter += 1
            end
        end
        counter
    end

    def to_string
        #
    end
end