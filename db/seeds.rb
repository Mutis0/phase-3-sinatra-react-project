# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


puts "🌱 Seeding spices..."

# db/seeds.rb

ActiveRecord::Base.transaction do
# Clear existing data
Product.destroy_all
Category.destroy_all
Customer.destroy_all
Order.destroy_all

# Seed data for products
puts "Creating categories"
category1 = Category.create(name: "Cleansers")
category2 = Category.create(name: "Toners")
category3 = Category.create(name: "Moisturizers")
category4 = Category.create(name: "Masks")

puts "Creating Cleansers"
products1 = Product.create(
    name: 'Soy Face Cleanser', 
    image_url: '"file:///C:/Users/nick/Downloads/ouOiIDwX.jpg"',
    price: 1400,
    description: 'For all skin types and rich in amino acids',
    category_id: category1.id
    )

products2 = Product.create(
    name: 'IOPE Cleansing Foam', 
    image_url: 'file:///C:/Users/nick/Downloads/15sHx33h.jpg',
    price: 1450,
    description: 'The ideal creamy cleanser for all skin types and rich in amino acids',
    category_id: category2.id
    )

products3 = Product.create(
    name: 'Hi Amino All Cleanser', 
    image_url: 'file:///C:/Users/nick/Downloads/Hi%20Amino%20All%20Cleanser.jpg',
    price: 1600,
    description: 'Say hello to brighter, tighter skin with the amino acid-rich Hi Amino All Cleanser from Dewytree. This facial cleanser removes impurities, dirt and daily grime from the surface while retaining moisture and improving texture of the skin',
    category_id: category3.id
    )

products4 = Product.create(
    name: 'elf Bounce Back Jelly Cleanser', 
    image_url: 'file:///C:/Users/nick/Downloads/elf%20Bounce%20Back%20Jelly%20Cleanser%20e_l.f.gif',
    price: 1750,
    description: 'elf Bounce Back Jelly Cleanser is the coconut-infused creme de la cleanse! This gentle, non-foaming cleanser leaves skin feeling soft and pampered.',
    category_id: category4.id
    )


puts "Creating Toners"
products5 = Product.create(
    name: 'Salicylic Acid', 
    image_url: 'https://www.pinterest.com/pin/46232333728935900/',
    price: 1400,
    description: '',
    category_id: category5.id
    )

products6 = Product.create(
    name: 'Florence by Mills', 
    image_url: 'file:///C:/Users/nick/Downloads/Episode%201%20Brighten%20up%20brightening%20toner.jpg',
    price: 1200,
    description: 'Episode 1; Helps brighten up your skin',
    category_id: category6.id
    )

products7 = Product.create(
    name: 'Jasmine Green Tea',  
    image_url: 'file:///C:/Users/nick/Downloads/tea.jpg',
    price: 1450,
    description: 'The perfect green tea balancing toner',
    category_id: category7.id
    )

products8 = Product.create(
    name: 'Farmacy Deep Sweep', 
    image_url: 'file:///C:/Users/nick/Downloads/Deep%20Sweep%202%25%20BHA%20Pore%20Cleaning%20Toner%20with%20Moringa%20+%20Papaya.webp',
    price: 1100,
    description: 'Pore cleaning toner with moringa and papaya',
    category_id: category8.id
    )
 
puts "Creating Moisturizers"
products9 = Product.create(
    name: 'Glossier Priming Moisturizer', 
    image_url: 'file:///C:/Users/nick/Downloads/Priming%20Moisturizer%20Rich.jpg',
    price: 1700,
    description: 'Dry skins best friend—an ultra rich, buttery moisturizer. A luxuriously rich yet fast-absorbing face cream that delivers a surge of long-lasting hydration. The buttery texture and blend of botanical oils and glycerin melt into skin to give you a smooth, dewy finish thats perfectly prepped for makeup.',
    category_id: category9.id
    )

products10 = Product.create(
    name: 'Cerave Moisturizing Cream', 
    image_url: 'file:///C:/Users/nick/Downloads/CeraVe%20Moisturizing%20Cream%20for%20Your%20Body%20and%20Face%20Highly%20Recommended%20for%20All%20My%20Alligator%20People!.jpg',
    price: 1350,
    description: 'Helps restore the protective skin barrier',
    category_id: category10.id
    )

products11 = Product.create(
    name: 'Skin Soak', 
    image_url: 'file:///C:/Users/nick/Downloads/Versed%20Skin%20Soak%20Moisture%20Cream.jpg',
    price: 1550,
    description: 'Rich moisture cream',
    category_id: category11.id
    )


puts "Creating Masks"
products12 = Product.create(
    name: 'WaterMelon Glow Sleeping Mask', 
    image_url: 'file:///C:/Users/nick/Downloads/MECCA%20Australia%20The%20Best%20in%20Makeup,%20Skincare,%20Hair%20&%20Fragrance.png',
    price: 1400,
    description: 'For an optimum skin care routine',
    category_id: category12.id
    )

products13 = Product.create(
    name: 'Laniege Lip Sleeping Mask', 
    image_url: 'file:///C:/Users/nick/Downloads/Lip%20Sleeping%20Mask%20_%20Laneige.jpg',
    price: 1900,
    description: 'Lip Sleeping mask is one of Laneige skin care products, made with ( Berry Mix Complex ) that provides the lips with vitamin C and antioxidants ',
    category_id: category13.id
    )

products14 = Product.create(
    name: 'Briskin Mask', 
    image_url: 'file:///C:/Users/nick/Downloads/Looking%20for%20Curated%20Brands%20.jpg',
    price: 650,
    description: 'A real fit second skin mask with premium bio-cellulose',
    category_id: category14.id
    )

products15 = Product.create(
    name: 'Sand and SkyClay Mask', 
    image_url: 'file:///C:/Users/nick/Downloads/Dull,%20Stressed-Out%20Skin%20You%20NEED%20These%20Peach%20&%20Lily%20Masks!.jpg',
    price: 1800,
    description: 'Explore all Sand & Sky Australian skin products made with natural Aussie botanicals to give your skin an instant boost with a mega glow and tighter pores!',
    category_id: category15.id
    )


puts "Creating Customers"
customer1 = Customer.create(name: "Jeremy", email: "jeremy@inti.org")
customer2 = Customer.create(name: "Dennis", email: "dennis@gmail.com")
customer3 = Customer.create(name: "Aria", email: "aria@gmail.com")
customer4 = Customer.create(name: "Rioba", email: "rioba@info.travel.org")
customer5 = Customer.create(name: "Hannah", email: "hunbunny@yahoo.com")

puts "Creating Orders"
order1 = Order.create(product_id: products7.id, customer_id: customer1.id)
order2 = Order.create(product_id: products15.id, customer_id: customer1.id)
order3 = Order.create(product_id: products7.id, customer_id: customer2.id)
order4 = Order.create(product_id: products1.id, customer_id: customer1.id)
order5 = Order.create(product_id: products5.id, customer_id: customer5.id)

puts "✅ Done seeding!"
