# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
ApplicationRecord.transaction do 
  Cat.destroy_all

  %w(cats).each do |table_name|
      ApplicationRecord.connection.reset_pk_sequence!(table_name)
  end 

  kitty1 = Cat.create!(birth_date: "1997/2/1",color: "black", name: "kitty1",sex: "M", description: "this is the first cat description")
  kitty2 = Cat.create!(birth_date: "1999/9/5",color: "gray", name: "kitty2", sex: "M", description: "this is the second cat description")
  kitty3 = Cat.create!(birth_date: "2001/7/5",color: "blue", name: "kitty3", sex: "F", description: "this is the third cat description")

end 