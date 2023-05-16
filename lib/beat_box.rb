require "./lib/node"
require "./lib/linked_list"

class BeatBox

    
    attr_accessor :list
    
    def initialize(first_nodes='')
        if first_nodes.empty? # check if any argument is given
            @list = LinkedList.new
        else
            @list = LinkedList.new
            append(first_nodes)
        end
    end

    def append(data)
        allowed_word_list = ["tee", "dee", "deep", "bop", "boop", "la", "na", "doo", "ditt", "woo", "hoo", "shu", "dop"]

        data.split.each do |item| # parse out inividual data entries
            if allowed_word_list.include?(item) # check if item is in allowed_word_list
                list.append(item)
            end
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

    def all
        list.to_string
    end

    def prepend(data)
        allowed_word_list = ["tee", "dee", "deep", "bop", "boop", "la", "na", "doo", "ditt", "woo", "hoo", "shu", "dop"]

        data.split.each do |item| # parse out inividual data entries
            if allowed_word_list.include?(item) # check if item is in allowed_word_list
                list.prepend(item)
            end
        end
        data
    end

end