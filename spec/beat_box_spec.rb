require "./lib/linked_list"
require "./lib/node"
require "rspec"

describe LinkedList do
    it 'exists' do
        bb = BeatBox.new
        expect(bb).to be_instance_of(BeatBox)
        expect(bb.list).to be_instance_of(LinkedList)
        expect(bb.list.head_.to eq nil
    end
end