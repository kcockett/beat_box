require "./lib/node"

class LinkedList
    attr_reader :head
    def initialize
        @head = nil
    end

    def append(data)
        if !@head # If there is no head, create a new node
            @head = Node.new (data)
        else
            current_node = @head
            while current_node.next_node !=nil # Find the last node
                current_node = current_node.next_node
            end
            current_node.next_node = Node.new (data)
        end
        data
    end

    def count
        if !@head # If there is no head, return 0
            counter = 0
        else # Count the number of nodes
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
        output_string = ""
        current_node = @head # Start at the first node
        while current_node.next_node != nil # Work through all nodes and shovel data to the output string
            output_string << "#{current_node.data} "
            current_node = current_node.next_node
        end
        output_string << "#{current_node.data}" # Insert last node data
        return output_string
    end

    def prepend(data)
        old_head = @head
        @head = Node.new(data)
        @head.next_node = old_head
    end

    def insert(position, data)
        if position == 0 # Inserting at 0 is the same as prepend
            prepend(data)
        elsif position == count
            append(data)
        elsif position > 0 && position < count
            current_node = @head
            (position - 1).times do
                current_node = current_node.next_node
            end
            old_next_node = current_node.next_node
            current_node.next_node = Node.new(data)
            current_node.next_node.next_node = old_next_node
        else
            puts "Invalid position"
        end
    end

    def find(node_position, number_elements)
        if node_position < count && node_position >= 0 #Make sure that the position is within the list
            output_string = ""
            current_node = @head
            node_position.times do
                current_node = current_node.next_node
            end
            number_elements.times do |i|
                output_string << current_node.data
                if current_node.next_node !=nil && i < number_elements-1
                    output_string << " "
                end
                current_node = current_node.next_node
            end
            output_string
        else
            puts "Invalid position"
        end
    end

    def includes?(data)
        found_node = false
        if @head # Make sure list is not empty, otherwise iterate through all nodes
            current_node = @head
            count.times do |i|
                if current_node.data == data
                    found_node = true
                    break
                end
                current_node = current_node.next_node
            end
        end
        found_node
    end

    def pop
        if @head # Make sure list is not empty
            current_node = @head
            while current_node.next_node.next_node != nil # Find the last node
                current_node = current_node.next_node
            end
            last_node = current_node.next_node # Setup the final return value
            current_node.next_node = nil # Blank the last node
            return last_node.data
        else
            puts "List is empty"
        end
    end
end