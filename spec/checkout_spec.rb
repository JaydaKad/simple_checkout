require 'checkout'

describe Checkout do

let(:checkout) { Checkout.new }

  it 'can respond to price' do
    expect(checkout).to respond_to(:price)
  end



  
end
