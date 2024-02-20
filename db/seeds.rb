# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# Seed the RottenPotatoes DB with some movies.
more_movies = [
  {:title => 'Nacho Libre', :rating => 'PG',
    :release_date => '2006'}
  {:title => 'Scooby-Doo! and the Monster of Mexico', :rating => 'NR',
    :release_date => '2003'}
  {:title => 'Wedding Crashers', :rating => 'R',
    :release_date => '2005'}
]

more_movies.each do |movie|
  Movie.create!(movie)
end