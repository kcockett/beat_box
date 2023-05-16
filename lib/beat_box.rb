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

        data.split.each do |item| # parse out inividual data entries
            allowed_words = File.readlines('./allowed_word_list.txt').map(&:chomp)
            if allowed_words.include?(item) # check if item is in allowed_word_list
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
        
        data.split.each do |item| # parse out inividual data entries
            allowed_words = File.readlines('./allowed_word_list.txt').map(&:chomp)
            if allowed_words.include?(item) # check if item is in allowed_word_list
                list.prepend(item)
            end
        end
        data
    end

end