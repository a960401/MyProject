# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(email:'now2016@naver.com', password: 'sgbiznow+')

Product.create(category: '우산', total_amount: 50, lended_amount: 10)
Product.create(category: '재무계산기', total_amount: 5, lended_amount: 2)

