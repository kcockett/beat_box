require "./lib/linked_list.rb"
require "./lib/node"
require "rspec"

describe LinkedList do
    describe '#initialize' do
        it 'exists' do
            list = LinkedList.new
        
            expect(list).to be_instance_of(LinkedList)
        end
        it 'head is nil' do
            list = LinkedList.new

            expect(list.head).to be_nil
        end
    end

    describe 'append' do
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
    end

    describe 'count' do
        it 'provides a count' do
            list = LinkedList.new
            list.append("doop")

            expect(list.count).to eq 1
        end
    end

    describe 'to_string' do
        it 'outputs a list of all data elements' do
            list = LinkedList.new
            list.append("doop")

            expect(list.to_string).to eq("doop")
        end
    end
end