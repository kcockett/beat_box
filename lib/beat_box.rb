require "./lib/node"
require "./lib/linked_list"

class BeatBox
    attr_accessor :list
    
    def initialize
        @list = LinkedList.new
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
end