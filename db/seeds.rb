# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.create(title: 'Product1',
  description: 'This is the first product',
  start_date: '2017-06-23',
  end_date: '2017-06-30'
)

Product.create(title: 'Product2',
  description: 'This is the second product',
  start_date: '2017-06-23',
  end_date: '2017-07-30'
)