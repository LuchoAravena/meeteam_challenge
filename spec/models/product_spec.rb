require 'rails_helper'

RSpec.describe Product, type: :model do
  it "is valid with valid attributes" do
    product = Product.new(name: "Sample Product", description: "Sample Description", price: 10.99)
    expect(product).to be_valid
  end

  it "is not valid without a name" do
    product = Product.new(description: "Sample Description", price: 10.99)
    expect(product).not_to be_valid
  end

  it "is not valid without a price" do
    product = Product.new(name: "Sample Product", description: "Sample Description")
    expect(product).not_to be_valid
  end
end
