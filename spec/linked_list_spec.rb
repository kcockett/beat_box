require "./lib/linked_list.rb"
require "./lib/node"
require "rspec"

describe LinkedList do
    describe '#initialize method' do
        it 'exists' do
            list = LinkedList.new
        
            expect(list).to be_instance_of(LinkedList)
        end
        it 'head is nil' do
            list = LinkedList.new

            expect(list.head).to be_nil
        end
    end

    describe 'append method' do
        it 'data appends to the end of the list' do
            list = LinkedList.new
            list.append("doop")

            expect(list.head.data).to eq("doop")

        end
        it 'next node is nil' do
            list = LinkedList.new
            list.append("doop")

            expect(list.head.next_node).to be_nil
        end
        it 'second node is inserted after the head item' do
            list = LinkedList.new
            list.append("doop")
            list.append("deep")

            expect(list.head.next_node).to be_instance_of(Node)
        end
    end

    describe 'count method' do
        it 'provides a count' do
            list = LinkedList.new
            list.append("doop")
            list.append("deep")

            expect(list.count).to eq 2
        end
    end

    describe 'to_string method' do
        it 'outputs a list of all data elements' do
            list = LinkedList.new
            list.append("doop")
            list.append("deep")

            expect(list.to_string).to eq("doop deep")
        end
    end

    describe 'insert method' do
        it 'inserts a node at the head of the list' do
            list = LinkedList.new
            list.append("plop")
            list.append("suu")
            list.prepend("dop")

            expect(list.head.data).to eq("dop")
        end
    end
end