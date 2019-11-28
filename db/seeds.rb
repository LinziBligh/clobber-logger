users = [
  {username: 'Linz', password: 'test', email: 'test@test.com'},
]

users.each do |u|
  User.create(u)
end

items=[
    {name: "Po-Zu White Trainers", 
    image:"https://cdn.shopify.com/s/files/1/0636/4349/products/po-zu_mainline_womens_sneak-V-white-silver_product-side_sq_shopify.jpg?v=1559909747", 
    cost: 50
},
{name: "Black Organic Basics T-Shirt",
image: "https://www.le-fix.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/w/e/web_16_131_1.jpg",
cost: 15},
{name: "Everlane Blue Jeans", image: "https://res.cloudinary.com/everlane/image/upload/c_fill,dpr_2.0,f_auto,h_1200,q_auto,w_1200/v1/i/025cf9e5_0b4a.jpg", 
cost: 30},
{name: "Marks and Spencers Brown flat boots", 
image: "https://aip.intucdn.co.uk/marksandspencer/raw/marksandspencer_c4545640498f11e9b19d0261ac2dc7eb.jpg", 
cost: 30},
{name: "Uniqlo Black Thermal Turtleneck", image: "https://d15udtvdbbfasl.cloudfront.net/catalog/product/large_image/09_147325.jpg", 
cost: 15},
{name: "Everlane Day Loafers", image: "https://res.cloudinary.com/everlane/image/upload/c_fill,dpr_2.0,f_auto,h_1200,q_auto,w_1200/v1/i/ce894966_e65c.jpg", 
cost: 100},
{name: "Cream Babaa Cardigan", image: "https://babaa.es/wp-content/uploads/2019/02/cardigan-woman-no-18-natural-966x1200.jpg", 
cost: 150}
]

items.each do |item|
    newitem=Item.create(name: item[:name], image: item[:image], cost: item[:cost])
    newitem.user=User.find_by_username("Linz")
    newitem.save
end