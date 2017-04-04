# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Transaction.create(company:'British Gas', amount:12.50, date:'3/4/2017', category:'Bills')
Transaction.create(company:'Tesco', amount:20.00, date:'4/4/2017', category:'Groceries')
Transaction.create(company:'Tesco', amount:5.00, date:'4/4/2017', category:'Groceries')
Transaction.create(company:'Debenhams', amount:34.00, date:'5/4/2017', category:'Shopping')
Transaction.create(company:'Southern Rail', amount:20.00, date:'5/4/2017', category:'Transport')
Transaction.create(company:'Absurd Bird', amount:40.00, date:'6/4/2017', category:'Eat & Drink Out')
Transaction.create(company:'Waitrose', amount:30.00, date:'7/4/2017', category:'Groceries')
Transaction.create(company:'Absurd Bird', amount:49.00, date:'8/4/2017', category:'Eat & Drink Out')
Transaction.create(company:'Thames Water', amount:30.00, date:'9/4/2017', category:'Bills')
Transaction.create(company:'South West Trains', amount:15.00, date:'9/4/2017', category:'Transport')
Transaction.create(company:'John Lewis', amount:30.00, date:'9/4/2017', category:'Shopping')
