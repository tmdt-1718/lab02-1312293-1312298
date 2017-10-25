# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.delete_all
 User.create!(email: 'nguyenvana@lab02.com', name: 'Nguyen Van A', password: '123456')
  User.create!(email: 'nguyenvanb@lab02.com', name: 'Nguyen Van B', password: '123456')
   User.create!(email: 'nguyenvanc@lab02.com', name: 'Nguyen Van C', password: '123456')
    User.create!(email: 'nguyenvand@lab02.com', name: 'Nguyen Van D', password: '123456')
     User.create!(email: 'nguyenvane@lab02.com', name: 'Nguyen Van E', password: '123456')