require 'rails_helper'

RSpec.describe Api::V1::ProductsController, type: :controller do
  before(:each) do
    @products = [
      Product.create(name: "iPhone 14", description: "Latest model with advanced features", price: 799.99),
      Product.create(name: "MacBook Pro", description: "High-performance laptop for professionals", price: 1999.99),
      Product.create(name: "AirPods Pro", description: "Noise-cancelling wireless earbuds", price: 249.99),
      Product.create(name: "Apple Watch Series 8", description: "Smartwatch with health tracking", price: 399.99),
      Product.create(name: "iPad Pro", description: "Powerful tablet with M1 chip", price: 1099.99),
      # Add more products if needed
    ]
  end

  describe "GET #index" do
    context "search functionality" do
      it "returns products matching the search query in the name" do
        get :index, params: { query: 'iPhone' }
        json = JSON.parse(response.body)
        expect(json.size).to eq(1)
        expect(json.first['name']).to eq('iPhone 14')
      end
    end

    context "sorting functionality" do
      it "returns products sorted by price in ascending order" do
        get :index, params: { sort_by: 'price', order: 'asc' }
        json = JSON.parse(response.body)
        expect(json.map { |p| p['name'] }).to eq([
          'AirPods Pro',
          'Apple Watch Series 8',
          'iPhone 14',
          'iPad Pro',
          'MacBook Pro'
        ])
      end

      it "returns products sorted by price in descending order" do
        get :index, params: { sort_by: 'price', order: 'desc' }
        json = JSON.parse(response.body)
        expect(json.map { |p| p['name'] }).to eq([
          'MacBook Pro',
          'iPad Pro',
          'iPhone 14',
          'Apple Watch Series 8',
          'AirPods Pro'
        ])
      end

      it "returns products sorted by created_at in ascending order" do
        # Ensure products are created in a specific order
        @products.first.update(created_at: 1.day.ago)
        @products.last.update(created_at: Time.current)

        get :index, params: { sort_by: 'created_at', order: 'asc' }
        json = JSON.parse(response.body)
        expect(json.map { |p| p['name'] }).to eq([
          @products.first.name,
          @products[1].name,
          @products[2].name,
          @products[3].name,
          @products.last.name
        ])
      end

      it "returns products sorted by created_at in descending order" do
        # Ensure products are created in a specific order
        @products.first.update(created_at: 1.day.ago)
        @products.last.update(created_at: Time.current)

        get :index, params: { sort_by: 'created_at', order: 'desc' }
        json = JSON.parse(response.body)
        expect(json.map { |p| p['name'] }).to eq([
          @products.last.name,
          @products[3].name,
          @products[2].name,
          @products[1].name,
          @products.first.name
        ])
      end
    end

    context "pagination functionality" do
      it "returns a paginated list of products" do
        get :index, params: { page: 1, per_page: 2 }
        json = JSON.parse(response.body)
        expect(json.size).to eq(2)
      end
    end
  end
end
