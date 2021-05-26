require_relative 'ruby_challenges'

describe "Time to checkout" do
  it 'should calc time with one till' do
    expect(checkout_time([5,3,4], 1)).to eq(12)
  end

  it 'should calc time with two tills' do
    expect(checkout_time([10,2,3,3], 2)).to eq(10)
    expect(checkout_time([2,3,10], 2)).to eq(12)
  end
end
