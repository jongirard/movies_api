# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'csv'

puts "Importing movies..."
CSV.foreach(Rails.root.join("movies.csv"), headers: true) do |row|
  Movie.create! do |movie|
    movie.title = row[0]
    movie.description = row[1]
    movie.release_date = row[2]
    movie.image = row[3]
  end
end
