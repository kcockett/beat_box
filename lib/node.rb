class Node
    attr_accessor :data, :next_node

    def initialize (data)
        @data = data.to_s.split.first
        @next_node = nil
    end

end