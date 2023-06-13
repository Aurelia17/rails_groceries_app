require "open-uri"

User.destroy_all
OrderItem.destroy_all
Product.destroy_all
Section.destroy_all

puts "Starting seeding"

user1 = User.new(first_name: 'Aurelia',
                 last_name: 'Tejas',
                 username: 'Toune',
                 email: 'test@test.com',
                 password: '123456',
                 password_confirmation: '123456')
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

file_p2 = URI.open('https://www.lakazart.com/wp-content/uploads/2023/06/poulet-entier.jpg')
product2 = Product.create(title: 'POULET ENTIER',
                          description: "Label60 POULET ENTIER",
                          price: 335,
                          quantity: 100,
                          section_id: section1.id)
product2.photo.attach(io: file_p2, filename: 'poulet', content_type: 'image/png')

puts "product 2 created !"

file_p3 = URI.open('https://www.lakazart.com/wp-content/uploads/2023/06/multigrains.jpg')
product3 = Product.create(title: 'MULTIGRAIN 250G',
                          description: "SPECIAL MOULE MULTIGRAIN 250G",
                          price: 42,
                          quantity: 100,
                          section_id: section2.id)
product3.photo.attach(io: file_p3, filename: 'multigrain', content_type: 'image/png')

puts "product 3 created !"

file_p4 = URI.open('https://www.lakazart.com/wp-content/uploads/2023/06/banana-chips.jpg')
product4 = Product.create(title: 'BANANA CHIPS 100G',
                          description: "SNACK PLUS 100G BANANA CHIPS",
                          price: 72,
                          quantity: 100,
                          section_id: section1.id)
product4.photo.attach(io: file_p4, filename: 'chips-banane', content_type: 'image/png')

puts "product 4 created !"

file_p5 = URI.open('https://www.lakazart.com/wp-content/uploads/2023/06/bananes.jpg')
product5 = Product.create(title: 'BANANES',
                          description: "BANANES 1kg",
                          price: 85,
                          quantity: 100,
                          section_id: section1.id)
product5.photo.attach(io: file_p5, filename: 'bananes', content_type: 'image/png')

puts "product 5 created !"

file_p6 = URI.open('https://www.lakazart.com/wp-content/uploads/2023/06/brede-tom-pouce.jpg')
product6 = Product.create(title: 'BREDE TOM POUCE',
                          description: "BREDE TOM POUCE - BOTTE",
                          price: 18,
                          quantity: 100,
                          section_id: section1.id)
product6.photo.attach(io: file_p6, filename: 'brede-tom-pouce', content_type: 'image/png')

puts "product 6 created !"

file_p7 = URI.open('https://www.lakazart.com/wp-content/uploads/2023/06/Oeufs-15-oeudor.jpg')
product7 = Product.create(title: 'OEUFS X 15',
                          description: "OEUDOR OEUFS X 15",
                          price: 119,
                          quantity: 100,
                          section_id: section1.id)
product7.photo.attach(io: file_p7, filename: 'oeufs-15-oeudor', content_type: 'image/png')

puts "product 7 created !"

file_p8 = URI.open('https://www.lakazart.com/wp-content/uploads/2023/06/Tarte-Banane.jpg')
product8 = Product.create(title: 'Tarte Banane',
                          description: "TARTE BANANE 6-8 PERS",
                          price: 239,
                          quantity: 100,
                          section_id: section2.id)
product8.photo.attach(io: file_p8, filename: 'tarte-banane', content_type: 'image/png')

puts "product 8 created !"

file_p9 = URI.open('https://www.lakazart.com/wp-content/uploads/2023/06/Gato-Choco.jpg')
product9 = Product.create(title: 'Moelleux aux Chocolat',
                          description: "MOELLEUX AU CHOCOLAT 10-15 PERS",
                          price: 359,
                          quantity: 100,
                          section_id: section2.id)
product9.photo.attach(io: file_p9, filename: 'tarte-banane', content_type: 'image/png')

puts "product 9 created !"

file_p10 = URI.open('https://www.lakazart.com/wp-content/uploads/2023/06/Baguette-Campagne_500x500.jpg')
product10 = Product.create(title: 'Baguette',
                           description: "Baguette Campagne",
                           price: 42,
                           quantity: 100,
                           section_id: section2.id)
product10.photo.attach(io: file_p10, filename: 'baguette-campgane', content_type: 'image/png')

puts "product 10 created !"

file_p11 = URI.open('https://www.lakazart.com/wp-content/uploads/2023/06/Pain-Energie_500x500.jpg')
product11 = Product.create(title: 'Pain Energie',
                           description: "PAIN ENERGIE",
                           price: 129,
                           quantity: 100,
                           section_id: section2.id)
product11.photo.attach(io: file_p11, filename: 'pain-energie', content_type: 'image/png')

puts "product 11 created !"

file_p12 = URI.open('https://www.lakazart.com/wp-content/uploads/2023/06/ozimate-bakery-delisun-chia-flax-seeds-360g-14344201109591_500x500.jpg')
product12 = Product.create(title: 'Wrap with seeds',
                           description: "Delisun, Chia & Flax seeds, 360g",
                           price: 155,
                           quantity: 100,
                           section_id: section2.id)
product12.photo.attach(io: file_p12, filename: 'wrap-seeds', content_type: 'image/png')

puts "product 12 created !"

file_p13 = URI.open('https://www.lakazart.com/wp-content/uploads/2023/06/mission-wraps-original-super-soft-x8-360g-979217_500x500.jpg')
product13 = Product.create(title: 'Wrap',
                           description: "Mission, Wraps Original Super Soft x8, 360g",
                           price: 185,
                           quantity: 100,
                           section_id: section2.id)
product13.photo.attach(io: file_p13, filename: 'wrap', content_type: 'image/png')

puts "product 13 created !"

file_p14 = URI.open('https://www.lakazart.com/wp-content/uploads/2023/06/pain-maison.jpg')
product14 = Product.create(title: 'Boule de Pain',
                           description: "Boule de pain maison, 100g",
                           price: 4,
                           quantity: 100,
                           section_id: section2.id)
product14.photo.attach(io: file_p14, filename: 'boule-pain', content_type: 'image/png')

puts "product 14 created !"
