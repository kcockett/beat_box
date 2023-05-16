require "./lib/linked_list"
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

    describe 'prepend method' do
        it 'inserts a node at the head of the list' do
            list = LinkedList.new
            list.append("plop")
            list.append("suu")
            list.prepend("dop")

            expect(list.head.data).to eq("dop")
        end
    end

    describe 'insert method' do
        it 'inserts a node at any point of the list' do
            list = LinkedList.new
            list.append("plop")
            list.append("suu")
            list.prepend("dop")
            list.insert(1, "woo")

            expect(list.to_string).to eq("dop woo plop suu")
        end
    end

    describe 'find method' do
        it 'finds the node at given location and returns additional elements from there' do
            list = LinkedList.new
            list.append("deep")
            list.append("woo")
            list.append("shi")
            list.append("shu")
            list.append("blop")

            expect(list.find(2,1)).to eq("shi")
            expect(list.find(1,3)).to eq("woo shi shu")
        end
    end

    describe 'includes? method' do
        it 'returns true if given data is in the list' do
            list = LinkedList.new
            list.append("deep")
            list.append("woo")
            list.append("shi")
            list.append("shu")
            list.append("blop")

            expect(list.includes?("deep")).to eq true
            expect(list.includes?("bep")).to eq false
        end
    end

    describe 'pop method' do
        it 'remove last element from the list' do
            list = LinkedList.new
            list.append("deep")
            list.append("woo")
            list.append("shi")
            list.append("shu")
            list.append("blop")

            expect(list.pop).to eq "blop"
            expect(list.pop).to eq "shu"
            expect(list.to_string).to eq "deep woo shi"
        end
    end
    
end