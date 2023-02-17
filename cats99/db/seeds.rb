# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
ActiveRecord::Base.transaction do 
  Cat.destroy_all

  %w(cats).each do |table_name|
      ApplicationRecord.connection.reset_pk_sequence!(table_name)
  end 

  k = User.create!(username: "Kaiter")
  f = User.create!(username: "Fahim")
  a = User.create!(username: "Alvin")

end 