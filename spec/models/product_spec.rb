require 'rails_helper'

RSpec.describe Product, type: :model do
  it "is valid with valid attributes" do
    product = Product.new(name: "Lenovo V15", description: "Lenovo notebook", price: 109.99)
    expect(product).to be_valid
  end

  it "is not valid without a name" do
    product = Product.new(description: "Lenovo notebook", price: 109.99)
    expect(product).not_to be_valid
  end

  it "is not valid without a price" do
    product = Product.new(name: "Lenovo V15", description: "Lenovo notebook")
    expect(product).not_to be_valid
  end
end
