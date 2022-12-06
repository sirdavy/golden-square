require "string_builder"

RSpec.describe StringBuilder do
  it "Returns a string" do
    example = StringBuilder.new
    #result = example
    expect(example.output).to eq ""
  end

  it "Returns a string of characters" do
    example = StringBuilder.new
    example.add("bananas")
    expect(example.output).to eq "bananas"
  end

  it "Returns a complete string" do
    example = StringBuilder.new
    example.add("bananas")
    example.add(" and apples")
    expect(example.output).to eq "bananas and apples"
  end

  it "Returns the lenght of the string" do
    example = StringBuilder.new
    example.add("")
    result = example.size
    expect(result).to eq 0
  end

  context "given one addition of a string" do
    it "outputs that string" do
      example = StringBuilder.new
      example.add("Hello")
      expect(example.output).to eq "Hello"
    end

    it "has a length of that string's length" do
      example = StringBuilder.new
      example.add("Hello")
      expect(example.size).to eq 5
    end
  end

  context "testing with multiple strings" do
    it "combines multiple strings" do
      example = StringBuilder.new
      example.add("Hello,")
      example.add(" world!")
      expect(example.output).to eq "Hello, world!"
    end

    it "counts multiple string's length" do
      example = StringBuilder.new
      example.add("Hello,")
      example.add(" world!")
      expect(example.size).to eq 13
    end
  end
end

#previous attempt

# require 'string_builder'

# RSpec.describe StringBuilder do
#   it "build a string" do
#     example_string = StringBuilder.new
#     example_string.add("Hello!")
#     result = example_string.size
#     expect(result).to eq 6
#   end

#   it "build a string" do
#     example_string = StringBuilder.new
#     example_string.add("Hello!")
#     result = example_string.output
#     expect(result).to eq "Hello!"
#   end

#   it "build a string" do
#     example_string = StringBuilder.new
#     example_string.add("Hello, ")
#     example_string.add("Marta")
#     result = example_string.output
#     expect(result).to eq "Hello, Marta"
#   end

#   it "build a string" do
#     example_string = StringBuilder.new
#     example_string.add("Hello, ")
#     example_string.add("Marta")
#     result = example_string.size
#     expect(result).to eq 12
#   end
# end