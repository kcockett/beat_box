require "./lib/node"
require "./lib/linked_list"

class BeatBox
    attr_accessor :list
    
    def initialize(first_nodes='')
        if first_nodes.empty?
            @list = LinkedList.new
        else
            @list = LinkedList.new
            append(first_nodes)
        end
    end

    def append(data)
        data.split.each do |item|
            list.append(item)
        end
        data
    end

    def count
        list.count
    end

    def play
        beats = list.to_string
        `say #{beats}`
    end


end