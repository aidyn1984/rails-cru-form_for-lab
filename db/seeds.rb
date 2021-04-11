# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


puts "Done Genre"
20.times do
    Genre.create(name:Faker::Music.genre)
end

puts "Done Artist"
20.times do
    Artist.create(name: Faker::Music::Hiphop.artist, bio: Faker::Quote.famous_last_words)
end 

puts "Done Song"
40.times do
    Song.create(name: Faker::Music.album, artist_id: Artist.all.sample.id, genre_id: Genre.all.sample.id)
end