# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Country.destroy_all
CountryUser.destroy_all
CategoryCountry.destroy_all
Source.destroy_all 
Post.destroy_all 
Category.destroy_all
UserSource.destroy_all
CustomQueryUser.destroy_all
CustomQuery.destroy_all


u1 = User.create(name: "Miles", password:"11")
c1 = Country.create(name: "Botswana")
uc1 = CountryUser.create(user_id: u1.id, country_id: c1.id)

ca1 = Category.create(name: "Sports")
cc1 = CategoryCountry.create(category_id: ca1.id, country_id:c1.id)
s1 = Source.create(name: "ABC")
p1 = Post.create(category_id: ca1.id, source_id: s1.id)
us1 = UserSource.create(user_id: u1.id, source_id: s1.id)
uc1 =  UserCategory.create(user_id: u1.id, category_id: ca1.id)

cn1 = CustomQuery.create(name: "bitcoin")
cnu1= CustomQueryUser.create(user_id: u1.id, custom_query_id: cn1.id)



