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
end