# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

contacts = Contact.create([
  { name:'Ana' , address:'avda. españa' , phone_number: '666666666', email_address: 'ana@ana.com'},
  { name:'Steve' , address:'Velazquez' , phone_number: '111111111' , email_address: 'ste@steve.com'},
  { name:'Alex' , address:'Estefanita' , phone_number:'000000000' , email_address: 'alex@a.es'},
  { name:'Mike' , address:'Gran Via' , phone_number: '999999999', email_address: 'mike@mike.es' },
  { name:'Helen' , address: 'Velazquez', phone_number: '888888888', email_address: 'helen@hel.com' }])
