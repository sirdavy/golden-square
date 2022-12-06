require 'gratitudes'

RSpec.describe Gratitudes do
  #code below checks that the array created is empty .instance_variable_get(:@gratitudes)
  it "returns an empty array" do
    example_grat = Gratitudes.new 
    expect(example_grat.instance_variable_get(:@gratitudes)).to eq []
  end

  it "adds string to array" do
    example_grat = Gratitudes.new 
    example_grat.add("good health")
    expect(example_grat.instance_variable_get(:@gratitudes)).to eq ["good health"]
  end


  it "compiles array of gratitudes" do
    example_grat = Gratitudes.new
    example_grat.add("good health")
    example_grat.add("nice weather")
    result = example_grat.format
    expect(result).to eq "Be grateful for: good health, nice weather"
  end

end