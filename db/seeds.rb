require "open-uri"

puts "cleaning DB..."

Rating.destroy_all
puts "Rating deleted"
Order.destroy_all
puts "Orders deleted"
User.destroy_all
puts "Users deleted"
OrderItem.destroy_all
puts "OrderItems deleted"
Product.destroy_all
puts "Products deleted"
Section.destroy_all
puts "Sections deleted"

puts "Starting seeding"

file0 = URI.open('https://www.lakazart.com/wp-content/uploads/2023/06/Design-sans-titre-1.jpg')
user1 = User.new(first_name: 'Aurelia',
                 last_name: 'Toffee',
                 username: 'Toune',
                 email: 'test@test.com',
                 password: '123456',
                 password_confirmation: '123456')
user1.avatar.attach(io: file0, filename: 'avatar', content_type: 'image/png')
user1.save!

puts "User 1 created !"

user2 = User.new(first_name: 'Tejas',
                 last_name: 'Test',
                 username: 'Test',
                 email: 'test@test.test',
                 password: '123456',
                 password_confirmation: '123456')
user2.save!

puts "User 2 created !"

file1 = URI.open('https://www.lakazart.com/wp-content/uploads/2023/06/viandes.png')
banner1 = URI.open('https://images.unsplash.com/photo-1607623814075-e51df1bdc82f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1770&q=80')
section1 = Section.create(title: 'Viandes')
section1.photo.attach(io: file1, filename: 'viandes', content_type: 'image/png')
section1.banner.attach(io: banner1, filename: 'viandesb', content_type: 'image/png')

puts "Section 1 created !"

banner2 = URI.open('https://images.unsplash.com/photo-1608198093002-ad4e005484ec?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2232&q=80')
file2 = URI.open('https://www.lakazart.com/wp-content/uploads/2023/06/boulangerie.png')
section2 = Section.create(title: 'Boulangerie')
section2.photo.attach(io: file2, filename: 'boulangerie', content_type: 'image/png')
section2.banner.attach(io: banner2, filename: 'boulangerieb', content_type: 'image/png')

puts "Section 2 created !"

file3 = URI.open('https://www.lakazart.com/wp-content/uploads/2023/06/boissons.png')
banner3 = URI.open('https://images.unsplash.com/photo-1595981267035-7b04ca84a82d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1770&q=80')
section3 = Section.create(title: 'Boissons')
section3.photo.attach(io: file3, filename: 'boisson', content_type: 'image/png')
section3.banner.attach(io: banner3, filename: 'boissonb', content_type: 'image/png')

puts "Section 3 created !"

file4 = URI.open('https://www.lakazart.com/wp-content/uploads/2023/06/gadjak.png')
banner4 = URI.open('https://images.unsplash.com/photo-1543158181-1274e5362710?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1770&q=80')
section4 = Section.create(title: 'Gadjak')
section4.photo.attach(io: file4, filename: 'gadjak', content_type: 'image/png')
section4.banner.attach(io: banner4, filename: 'gadjaks', content_type: 'image/png')

puts "Section 4 created !"

file5 = URI.open('https://www.lakazart.com/wp-content/uploads/2023/06/fruit.png')
banner5 = URI.open('https://images.unsplash.com/photo-1521123036037-6725d75de336?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1770&q=80')
section5 = Section.create(title: 'Fruits')
section5.photo.attach(io: file5, filename: 'fruit', content_type: 'image/png')
section5.banner.attach(io: banner5, filename: 'fruits', content_type: 'image/png')

puts "Section 5 created !"

file6 = URI.open('https://www.lakazart.com/wp-content/uploads/2023/06/legume.png')
section6 = Section.create(title: 'Légumes')
section6.photo.attach(io: file6, filename: 'fruit', content_type: 'image/png')

puts "Section 6 created !"

file7 = URI.open('https://www.lakazart.com/wp-content/uploads/2023/06/oeufs.png')
section7 = Section.create(title: 'Oeufs')
section7.photo.attach(io: file7, filename: 'oeufs', content_type: 'image/png')

puts "Section 7 created !"

file8 = URI.open('https://www.lakazart.com/wp-content/uploads/2023/06/Gateaux.png')
banner8 = URI.open('https://images.unsplash.com/photo-1548848221-0c2e497ed557?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1769&q=80')
section8 = Section.create(title: 'Biscuits')
section8.photo.attach(io: file8, filename: 'Biscuit', content_type: 'image/png')
section8.banner.attach(io: banner8, filename: 'Biscuits', content_type: 'image/png')

puts "Section 8 created !"

file9 = URI.open('https://www.lakazart.com/wp-content/uploads/2023/06/Glaces.png')
banner9 = URI.open('https://images.unsplash.com/photo-1629385701021-fcd568a743e8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1770&q=80')
section9 = Section.create(title: 'Glaces')
section9.photo.attach(io: file9, filename: 'Glace', content_type: 'image/png')
section9.banner.attach(io: banner9, filename: 'Glaces', content_type: 'image/png')

puts "Section 9 created !"

file10 = URI.open('https://www.lakazart.com/wp-content/uploads/2023/06/plats-prepares.png')
banner10 = URI.open('https://images.unsplash.com/photo-1545216560-68430ad77342?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2430&q=80')
section10 = Section.create(title: 'Plats préparés')
section10.photo.attach(io: file10, filename: 'Plats-prepares', content_type: 'image/png')
section10.banner.attach(io: banner10, filename: 'Plats-prepares', content_type: 'image/png')

puts "Section 10 created !"

file11 = URI.open('https://www.lakazart.com/wp-content/uploads/2023/06/cereales.png')
banner11 = URI.open('https://images.unsplash.com/photo-1626020675290-ee0548b806e3?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8Y2VyZWFsfGVufDB8MHwwfHx8MA%3D%3D&auto=format&fit=crop&w=800&q=60')
section11 = Section.create(title: 'Céréales')
section11.photo.attach(io: file11, filename: 'Cereale', content_type: 'image/png')
section11.banner.attach(io: banner11, filename: 'Cereales', content_type: 'image/png')

puts "Section 11 created !"

file12 = URI.open('https://www.lakazart.com/wp-content/uploads/2023/06/Conserves.png')
banner12 = URI.open('https://images.unsplash.com/photo-1534483509719-3feaee7c30da?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1770&q=80')
section12 = Section.create(title: 'Conserves')
section12.photo.attach(io: file12, filename: 'Conserve', content_type: 'image/png')
section12.banner.attach(io: banner12, filename: 'Conserves', content_type: 'image/png')

puts "Section 12 created !"

file13 = URI.open('https://www.lakazart.com/wp-content/uploads/2023/06/Produits-du-monde.png')
banner13 = URI.open('https://images.unsplash.com/photo-1612277631885-872bf6bd3de5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1767&q=80')
section13 = Section.create(title: 'Produits du monde')
section13.photo.attach(io: file13, filename: 'produits-du-monde', content_type: 'image/png')
section13.banner.attach(io: banner13, filename: 'produits-du-mondes', content_type: 'image/png')

puts "Section 13 created !"

file14 = URI.open('https://www.lakazart.com/wp-content/uploads/2023/06/Bonbons.png')
banner14 = URI.open('https://images.unsplash.com/photo-1627494113508-9ba5b63d9d5c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1770&q=80')
section14 = Section.create(title: 'Bonbons')
section14.photo.attach(io: file14, filename: 'Bonbons', content_type: 'image/png')
section14.banner.attach(io: banner14, filename: 'Bonbonss', content_type: 'image/png')

puts "Section 14 created !"

file15 = URI.open('https://www.lakazart.com/wp-content/uploads/2023/06/the.png')
section15 = Section.create(title: 'Thés')
section15.photo.attach(io: file15, filename: 'Thes', content_type: 'image/png')

puts "Section 15 created !"

file16 = URI.open('https://www.lakazart.com/wp-content/uploads/2023/06/cafe.png')
section16 = Section.create(title: 'Cafés')
section16.photo.attach(io: file16, filename: 'Cafes', content_type: 'image/png')

puts "Section 16 created !"

file17 = URI.open('https://www.lakazart.com/wp-content/uploads/2023/06/Produits-lessives.png')
section17 = Section.create(title: 'Produits Lessives')
section17.photo.attach(io: file17, filename: 'Produits-Lessives', content_type: 'image/png')

puts "Section 17 created !"

file18 = URI.open('https://www.lakazart.com/wp-content/uploads/2023/06/Produits-Vaisselle.png')
section18 = Section.create(title: 'Produits Vaisselle')
section18.photo.attach(io: file18, filename: 'Produits-Vaisselle', content_type: 'image/png')

puts "Section 18 created !"

file19 = URI.open('https://www.lakazart.com/wp-content/uploads/2023/06/produits-bebes.png')
section19 = Section.create(title: 'Produits Bébé')
section19.photo.attach(io: file19, filename: 'Produits-bebe', content_type: 'image/png')

puts "Section 19 created !"

file20 = URI.open('https://www.lakazart.com/wp-content/uploads/2023/06/Presse.png')
section20 = Section.create(title: 'Presse')
section20.photo.attach(io: file20, filename: 'presse', content_type: 'image/png')

puts "Section 20 created !"

file21 = URI.open('https://www.lakazart.com/wp-content/uploads/2023/06/articlesmenager.png')
section21 = Section.create(title: 'Produits ménager')
section21.photo.attach(io: file21, filename: 'articlesmenager', content_type: 'image/png')

puts "Section 21 created !"

file22 = URI.open('https://www.lakazart.com/wp-content/uploads/2023/06/detente.png')
section22 = Section.create(title: 'Détente')
section22.photo.attach(io: file22, filename: 'detente', content_type: 'image/png')

puts "Section 22 created !"

file23 = URI.open('https://www.lakazart.com/wp-content/uploads/2023/06/electromenager.png')
section23 = Section.create(title: 'Electromenager')
section23.photo.attach(io: file23, filename: 'electromenager', content_type: 'image/png')

puts "Section 23 created !"

file24 = URI.open('https://www.lakazart.com/wp-content/uploads/2023/06/hygiene-dentaire.png')
section24 = Section.create(title: 'Hygiène dentaire')
section24.photo.attach(io: file24, filename: 'hygiene-dentaire', content_type: 'image/png')

puts "Section 24 created !"

file25 = URI.open('https://www.lakazart.com/wp-content/uploads/2023/06/Papeterie.png')
section25 = Section.create(title: 'Papeterie')
section25.photo.attach(io: file25, filename: 'papeterie', content_type: 'image/png')

puts "Section 25 created !"

file26 = URI.open('https://www.lakazart.com/wp-content/uploads/2023/06/Animalerie.png')
section26 = Section.create(title: 'Animalerie')
section26.photo.attach(io: file26, filename: 'animalerie', content_type: 'image/png')

puts "Section 26 created !"

file27 = URI.open('https://www.lakazart.com/wp-content/uploads/2023/06/Maison-et-loisirs.png')
section27 = Section.create(title: 'Maison et loisirs')
section27.photo.attach(io: file27, filename: 'maison', content_type: 'image/png')

puts "Section 27 created !"

file28 = URI.open('https://www.lakazart.com/wp-content/uploads/2023/06/Farine.png')
section28 = Section.create(title: 'Produits patisserie')
section28.photo.attach(io: file28, filename: 'patisserie', content_type: 'image/png')

puts "Section 28 created !"

file29 = URI.open('https://www.lakazart.com/wp-content/uploads/2023/06/Yaourt.png')
section29 = Section.create(title: 'Produits laitiers')
section29.photo.attach(io: file29, filename: 'laitiers', content_type: 'image/png')

puts "Section 29 created !"

file30 = URI.open('https://www.lakazart.com/wp-content/uploads/2023/06/Papiers-et-tissue.png')
section30 = Section.create(title: 'Papiers et tissues')
section30.photo.attach(io: file30, filename: 'papiers', content_type: 'image/png')

puts "Section 30 created !"

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
product4 = Product.create(title: 'BANANA CHIPS',
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
product6 = Product.create(title: 'TOM POUCE',
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
product9 = Product.create(title: 'Gato Chocolat',
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
