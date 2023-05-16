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
    end
end