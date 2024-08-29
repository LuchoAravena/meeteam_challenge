# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

# db/seeds.rb

Product.create([
  { name: "iPhone 14", description: "Latest model with advanced features", price: rand(700..900) },
  { name: "MacBook Pro", description: "High-performance laptop for professionals", price: rand(1500..2100) },
  { name: "AirPods Pro", description: "Noise-cancelling wireless earbuds", price: rand(200..300) },
  { name: "Apple Watch Series 8", description: "Smartwatch with health tracking", price: rand(350..450) },
  { name: "iPad Pro", description: "Powerful tablet with M1 chip", price: rand(1000..1200) },
  { name: "Samsung Galaxy S21", description: "Flagship Android phone with cutting-edge features", price: rand(700..800) },
  { name: "Dell XPS 13", description: "Compact and powerful ultrabook", price: rand(1300..1500) },
  { name: "Sony WH-1000XM4", description: "Top-rated noise-cancelling headphones", price: rand(300..350) },
  { name: "Microsoft Surface Pro 7", description: "Versatile 2-in-1 laptop and tablet", price: rand(850..950) },
  { name: "Google Pixel 6", description: "Smartphone with excellent camera and software", price: rand(650..750) },
  { name: "Nintendo Switch", description: "Popular hybrid gaming console", price: rand(270..320) },
  { name: "Fitbit Charge 5", description: "Advanced fitness tracker with GPS", price: rand(160..190) },
  { name: "Amazon Echo Dot", description: "Compact smart speaker with Alexa", price: rand(40..60) },
  { name: "JBL Charge 5", description: "Portable Bluetooth speaker with long battery life", price: rand(150..170) },
  { name: "GoPro HERO10", description: "Durable action camera for adventure sports", price: rand(450..550) },
  { name: "Asus ROG Strix", description: "High-performance gaming laptop", price: rand(2000..2400) },
  { name: "Razer DeathAdder V2", description: "Popular gaming mouse with customizable features", price: rand(70..90) },
  { name: "LG 27UL850", description: "27-inch 4K monitor with USB-C", price: rand(400..460) },
  { name: "Bose QuietComfort 35 II", description: "Premium noise-cancelling headphones", price: rand(280..320) },
  { name: "Oculus Quest 2", description: "Standalone VR headset for immersive experiences", price: rand(380..420) }
])
