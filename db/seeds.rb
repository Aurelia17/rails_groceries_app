require "open-uri"

User.destroy_all
Section.destroy_all
Product.destroy_all

puts "Starting seeding"

user1 = User.new(email: 'test@test.com',
                 password: '123456',
                 password_confirmation: '123456',
                 username: 'Jack')
user1.save!

puts "User 1 created !"

file1 = URI.open('https://www.lakazart.com/wp-content/uploads/2023/06/viandes.png')
section1 = Section.create(title: 'Viandes')
section1.photo.attach(io: file1, filename: 'viandes', content_type: 'image/png')

puts "Section 1 created !"

file2 = URI.open('https://www.lakazart.com/wp-content/uploads/2023/06/boulangerie.png')
section2 = Section.create(title: 'Boulangerie')
section2.photo.attach(io: file2, filename: 'boulangerie', content_type: 'image/png')

puts "Section 2 created !"

file3 = URI.open('https://www.lakazart.com/wp-content/uploads/2023/06/boissons.png')
section3 = Section.create(title: 'Boissons')
section3.photo.attach(io: file3, filename: 'boisson', content_type: 'image/png')

puts "Section 3 created !"

file4 = URI.open('https://www.lakazart.com/wp-content/uploads/2023/06/gadjak.png')
section4 = Section.create(title: 'Gadjak')
section4.photo.attach(io: file4, filename: 'gadjak', content_type: 'image/png')

puts "Section 4 created !"

file5 = URI.open('https://www.lakazart.com/wp-content/uploads/2023/06/fruit.png')
section5 = Section.create(title: 'Fruits')
section5.photo.attach(io: file5, filename: 'fruit', content_type: 'image/png')

puts "Section 5 created !"

file6 = URI.open('https://www.lakazart.com/wp-content/uploads/2023/06/legume.png')
section6 = Section.create(title: 'Légumes')
section6.photo.attach(io: file6, filename: 'fruit', content_type: 'image/png')

puts "Section 6 created !"

file7 = URI.open('https://www.lakazart.com/wp-content/uploads/2023/06/oeufs.png')
section7 = Section.create(title: 'Oeufs')
section7.photo.attach(io: file7, filename: 'oeufs', content_type: 'image/png')

puts "Section 7 created !"

file_p1 = URI.open('https://www.lakazart.com/wp-content/uploads/2023/06/vital.jpg')
product1 = Product.create(title: 'Vital 1L',
                          description: "Eau de source",
                          price: 22,
                          quantity: 100,
                          section_id: section3.id)
product1.photo.attach(io: file_p1, filename: 'vital', content_type: 'image/png')

puts "product 1 created !"
