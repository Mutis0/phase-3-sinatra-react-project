puts "🌱 Seeding spices..."

ActiveRecord::Base.transaction do

# Clear existing data
Product.destroy_all
Category.destroy_all
Customer.destroy_all
Order.destroy_all

# Create categories
category1 = Category.create(name: "Cleansers")
category2 = Category.create(name: "Toners")
category3 = Category.create(name: "Moisturizers")
category4 = Category.create(name: "Masks")

# Create products
products1 = Product.create(
    name: 'Soy Face Cleanser', 
    image: 'file:///C:/Users/nick/Downloads/ouOiIDwX.jpg',
    price: 1400,
    description: 'For all skin types and rich in amino acids',
    category: category1
    )

products2 = Product.create(
    name: 'IOPE Cleansing Foam', 
    image: 'file:///C:/Users/nick/Downloads/15sHx33h.jpg',
    price: 1450,
    description: 'The ideal creamy cleanser for all skin types and rich in amino acids',
    category: category1
    )

products3 = Product.create(
    name: 'Hi Amino All Cleanser', 
    image: 'file:///C:/Users/nick/Downloads/Hi%20Amino%20All%20Cleanser.jpg',
    price: 1600,
    description: 'Say hello to brighter, tighter skin with the amino acid-rich Hi Amino All Cleanser from Dewytree. This facial cleanser removes impurities, dirt and daily grime from the surface while retaining moisture and improving texture of the skin',
    category: category1
    )

products4 = Product.create(
    name: 'elf Bounce Back Jelly Cleanser', 
    image: 'file:///C:/Users/nick/Downloads/elf%20Bounce%20Back%20Jelly%20Cleanser%20e_l.f.gif',
    price: 1750,
    description: 'elf Bounce Back Jelly Cleanser is the coconut-infused creme de la cleanse! This gentle, non-foaming cleanser leaves skin feeling soft and pampered.',
    category: category1
    )

products5 = Product.create(
    name: 'Pixi Glow Tonic', 
    image: 'file:///C:/Users/nick/Downloads/Glow%20Tonic%20100ml.jpg',
    price: 1400,
    description: 'The Pixi Glow Tonic 100ml miracle working toner helps brighten the complexion resulting in a healthier glow.',
    category: category2
    )

products6 = Product.create(
    name: 'Florence by Mills', 
    image: 'file:///C:/Users/nick/Downloads/Episode%201%20Brighten%20up%20brightening%20toner.jpg',
    price: 1200,
    description: 'Episode 1; Helps brighten up your skin',
    category: category2
    )

products7 = Product.create(
    name: 'Jasmine Green Tea',  
    image: 'file:///C:/Users/nick/Downloads/tea.jpg',
    price: 1450,
    description: 'The perfect green tea balancing toner',
    category: category2
    )

products8 = Product.create(
    name: 'Farmacy Deep Sweep', 
    image: 'file:///C:/Users/nick/Downloads/Deep%20Sweep%202%25%20BHA%20Pore%20Cleaning%20Toner%20with%20Moringa%20+%20Papaya.webp',
    price: 1100,
    description: 'Pore cleaning toner with moringa and papaya',
    category: category2
    )
 
products9 = Product.create(
    name: 'Glossier Priming Moisturizer', 
    image: 'file:///C:/Users/nick/Downloads/Priming%20Moisturizer%20Rich.jpg',
    price: 1700,
    description: 'Dry skins best friend—an ultra rich, buttery moisturizer. A luxuriously rich yet fast-absorbing face cream that delivers a surge of long-lasting hydration. The buttery texture and blend of botanical oils and glycerin melt into skin to give you a smooth, dewy finish thats perfectly prepped for makeup.',
    category: category3
    )

products10 = Product.create(
    name: 'Cerave Moisturizing Cream', 
    image: 'file:///C:/Users/nick/Downloads/CeraVe%20Moisturizing%20Cream%20for%20Your%20Body%20and%20Face%20Highly%20Recommended%20for%20All%20My%20Alligator%20People!.jpg',
    price: 1350,
    description: 'Helps restore the protective skin barrier',
    category: category3
    )

products11 = Product.create(
    name: 'Skin Soak', 
    image: 'file:///C:/Users/nick/Downloads/Versed%20Skin%20Soak%20Moisture%20Cream.jpg',
    price: 1550,
    description: 'Rich moisture cream',
    category: category3
    )

products12 = Product.create(
    name: 'WaterMelon Glow Sleeping Mask', 
    image: 'file:///C:/Users/nick/Downloads/MECCA%20Australia%20The%20Best%20in%20Makeup,%20Skincare,%20Hair%20&%20Fragrance.png',
    price: 1400,
    description: 'For an optimum skin care routine',
    category: category4
    )

products13 = Product.create(
    name: 'Laniege Lip Sleeping Mask', 
    image: 'file:///C:/Users/nick/Downloads/Lip%20Sleeping%20Mask%20_%20Laneige.jpg',
    price: 1900,
    description: 'Lip Sleeping mask is one of Laneige skin care products, made with ( Berry Mix Complex ) that provides the lips with vitamin C and antioxidants ',
    category: category4
    )

products14 = Product.create(
    name: 'Briskin Mask', 
    image: 'file:///C:/Users/nick/Downloads/Looking%20for%20Curated%20Brands%20.jpg',
    price: 650,
    description: 'A real fit second skin mask with premium bio-cellulose',
    category: category4
    )

products15 = Product.create(
    name: 'Sand and SkyClay Mask', 
    image: 'file:///C:/Users/nick/Downloads/Dull,%20Stressed-Out%20Skin%20You%20NEED%20These%20Peach%20&%20Lily%20Masks!.jpg',
    price: 1800,
    description: 'Explore all Sand & Sky Australian skin products made with natural Aussie botanicals to give your skin an instant boost with a mega glow and tighter pores!',
    category: category4
    )

customer1 = Customer.create(name: "Jeremy", email: "jeremy@inti.org", address: "123 Main St")
customer2 = Customer.create(name: "Dennis", email: "dennis@gmail.com", address: "456 Oak Ave")
customer3 = Customer.create(name: "Aria", email: "aria@gmail.com", address: "123 Main St")

order1 = Order.create(customer: customer1)
OrderItem.create(order: order1, product: products1)
OrderItem.create(order: order1, product: products3)

order2 = Order.create(customer: customer2)
OrderItem.create(order: order2, product: products2)
OrderItem.create(order: order2, product: products3)

end

puts "✅ Done seeding!"
