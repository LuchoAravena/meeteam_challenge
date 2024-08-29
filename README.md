# Meeteam Challenge
This is an API for managing products. It allows searching, sorting and paginating products.

## How to install
1_ Clone the repository
-git clone https://github.com/LuchoAravena/meeteam_challenge.git

2_ Install dependencies
-bundle install

3_ Setup database
-rails db:create
-rails db:migrate
-rails db:seed

4_ Start server
-rails s


###Endpoints

GET /api/v1/products
Obtain all products, paginated with a default of 10 products per page.
Example: http://localhost:3000/api/v1/products

GET /api/v1/products?query=product
Search products by name or description with case-insensitive matching.
Example: http://localhost:3000/api/v1/products?query=macbook

GET /api/v1/products?sort_by=price&order=asc
Sort products by price in ascending or descending order.
Example: http://localhost:3000/api/v1/products?sort_by=price&order=asc

GET /api/v1/products?page=x&per_page=xx
Paginate products. Replace x with the page number and xx with the number of products per page.
Example: http://localhost:3000/api/v1/products?page=1&per_page=20

GET /api/v1/products?sort_by=created_at&order=desc
Sort products by creation date in ascending or descending order.
Example: http://localhost:3000/api/v1/products?sort_by=created_at&order=desc
