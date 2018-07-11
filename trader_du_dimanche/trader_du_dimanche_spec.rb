require "trader_du_dimanche"

describe "trader du dimanche" do
  it "should give the best index to sell and buy" do
    trader_du_dimanche(evolution_price).to eq([1, 4])
  end
end