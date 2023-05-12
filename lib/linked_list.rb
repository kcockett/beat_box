require "./lib/node"

class LinkedList
    attr_reader :head
    def initialize
        @head = nil
    end

    def append(data)
        if !@head
            @head = Node.new (data)
            puts "Added first node"
        else
            current_node = @head
            puts "Adding another node after #{current_node} which contains '#{current_node.data}'"
            puts "  and next_node is '#{current_node.next_node}'"

            while current_node.next_node !=nil
                current_node = current_node.next_node
                puts "iterating..."
            end
            current_node.next_node = Node.new (data)
        end
        data
    end

    def count
        if !@head
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
        if @head
            current_node = @head
            output_string = current_node.data
            while current_node.next_node !=nil
                current_node = current_node.next_node
                output_string << " #{current_node.data}"
            end
            output_string
        else
            puts "List is empty"
        end
    end
end