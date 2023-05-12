require "./lib/linked_list.rb"
require "./lib/node"

list = LinkedList.new
list.append("doop")
list.count

require 'pry'; binding.pry