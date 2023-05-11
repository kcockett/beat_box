require '../lib/node'

RSpec.describe Node do
  it 'exists' do
    node = Node.new("boom")

    expect(node).to be_instance_of(Node)
  end

  it 'has accepts data' do
    node = Node.new("boom")

    expect(node.data).to eq("boom")
  end

  it 'has no next_node' do
    node = Node.new("boom")

    expect(node.next_node).to eq(nil)
  end

  it 'accepts only one data element' do
    node = Node.new("boom tit boom")

    expect(node.data).to eq("boom")
  end
  it 'accepts only string data' do
    node = Node.new(123)

    expect(node.data.class).to eq(String)
  end
end