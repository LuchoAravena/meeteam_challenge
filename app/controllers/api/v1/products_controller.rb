class Api::V1::ProductsController < ApplicationController
  def index
    page = params[:page] || 1
    per_page = params[:per_page] || 10

    products = Product.all

    if params[:query].present?
      query = "%#{params[:query]}%"
      products = products.where('name ILIKE ? OR description ILIKE ?', query, query)
    end

    if params[:sort_by].present? && params[:order].present?
      if ['name', 'price', 'created_at'].include?(params[:sort_by]) && ['asc', 'desc'].include?(params[:order])
        products = products.order("#{params[:sort_by]} #{params[:order]}")
      end
    end

    products = products.page(page).per(per_page)

    render json: products
  end
end
