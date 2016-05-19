
# create 30 customers
# create 10 products
# create 20 orders

30.times do
  Customer.create! first_name: Faker::Name.first_name,
                   last_name: Faker::Name.last_name,
                   email: Faker::Internet.email,
                   password: Faker::Internet.password
end

50.times do 
  Product.create! name: Faker::Commerce.product_name,
                  description: Faker::Hacker.say_something_smart,
                  inventory: (0..200).to_a.sample,
                  active: [true, false].sample

end

20.times do

  prod = Product.all.sample
  cust = Customer.all.sample

  order = Order.create customer: cust
  (1..3).to_a.sample.times do
    order.order_items.create product: prod, price: Faker::Commerce.price, quantity: (1..10).to_a.sample
  end

end
