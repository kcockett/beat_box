require "./lib/node"
require "./lib/linked_list"

class BeatBox
    attr_reader :head
    def initialize
        @list = LinkedList.new
    end
end