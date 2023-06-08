require "open-uri"

User.destroy_all
Section.destroy_all

puts "Starting seeding"

user1 = User.new(
  email: 'user@domain.com',
  password: '123456',
  password_confirmation: '123456'
)
user1.save!

file1 = URI.open('https://www.lakazart.com/wp-content/uploads/2023/06/viandes.png')
section1 = Section.create(title: 'Viandes',
                          user: User.first)
section1.photo.attach(io: file1, filename: 'viandes', content_type: 'image/png')

puts "Section 1 created !"

file2 = URI.open('https://www.lakazart.com/wp-content/uploads/2023/06/boulangerie.png')
section2 = Section.create(title: 'Boulangerie',
                          user: User.first)
section2.photo.attach(io: file2, filename: 'boulangerie', content_type: 'image/png')

puts "Section 2 created !"

file3 = URI.open('https://www.lakazart.com/wp-content/uploads/2023/06/boissons.png')
section3 = Section.create(title: 'Boissons',
                          user: User.first)
section3.photo.attach(io: file3, filename: 'boisson', content_type: 'image/png')

puts "Section 3 created !"

file4 = URI.open('https://www.lakazart.com/wp-content/uploads/2023/06/gadjak.png')
section4 = Section.create(title: 'Gadjak',
                          user: User.first)
section4.photo.attach(io: file4, filename: 'gadjak', content_type: 'image/png')

puts "Section 4 created !"

file5 = URI.open('https://www.lakazart.com/wp-content/uploads/2023/06/fruit.png')
section5 = Section.create(title: 'Fruits',
                          user: User.first)
section5.photo.attach(io: file5, filename: 'fruit', content_type: 'image/png')

puts "Section 5 created !"

file6 = URI.open('https://www.lakazart.com/wp-content/uploads/2023/06/legume.png')
section6 = Section.create(title: 'Légumes',
                          user: User.first)
section6.photo.attach(io: file6, filename: 'fruit', content_type: 'image/png')

puts "Section 6 created !"

file7 = URI.open('https://www.lakazart.com/wp-content/uploads/2023/06/oeufs.png')
section7 = Section.create(title: 'Oeufs',
                          user: User.first)
section7.photo.attach(io: file7, filename: 'oeufs', content_type: 'image/png')

puts "Section 7 created !"
