require 'checkout'

describe Checkout do

let(:checkout) { Checkout.new }

  it 'can respond to price' do
    expect(checkout).to respond_to(:price)
  end

  it 'can give you the price of a selected item' do
    checkout
    expect(checkout.price(:cereal)).to eq(1.5)
  end

  it 'can scan an item' do
    checkout.scan(:cereal)
    expect(checkout.item_list.length).to eq(1)
  end

  it 'can give a total of prices' do
    checkout.scan(:cereal)
    checkout.scan(:potatoes)
    expect(checkout.total).to eq(3.5)
  end



end
