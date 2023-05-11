require './lib/linked_list.rb'
require 'rspec'

describe LinkedList do
    describe '#initialize' do
        it 'exists' do
            list = LinkedList.new
        
            expect(list).to be_instance_of(LinkedList)
          end
        
          it 'has accepts data' do
            list = LinkedList.new("boom")
        
            expect(list.data).to eq("boom")
          end
        
          it 'has no next_list' do
            list = LinkedList.new("boom")
        
            expect(list.next_list).to eq(nil)
          end
        
          it 'accepts only one data element' do
            list = LinkedList.new("boom tit boom")
        
            expect(list.data).to eq("boom")
          end
          it 'accepts only string data' do
            list = LinkedList.new(123)
        
            expect(list.data.class).to eq(String)
          end

    end
end