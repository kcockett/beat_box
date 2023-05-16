require "./lib/beat_box"
require "./lib/linked_list"
require "./lib/node"
require "rspec"

describe BeatBox do
    describe "#initialize" do
        it 'exists with default configuration' do
            bb = BeatBox.new
            expect(bb).to be_instance_of(BeatBox)
            expect(bb.list).to be_instance_of(LinkedList)
            expect(bb.list.head).to eq nil
        end

        it 'can append to bb.list' do
            bb = BeatBox.new
            expect(bb.list.append("deep doo ditt")).to eq ("deep doo ditt")
            require 'pry'; binding.pry
            expect(bb.list.head.data).to eq ("deep")
            expect(bb.list.head.next_node.data).to eq ("doo")
        end
    end

end

            # 
            # 
            # 
            # expect(bb.append("woo hoo shu")).to eq ("woo hoo shu")
            # expect(bb.count).to eq(6)