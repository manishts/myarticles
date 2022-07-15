article_list = [
    [ "title1", "body1" ],
    [ "title2", "body2" ],
    [ "title3", "body3" ],
    [ "title4", "body4" ],
    [ "title5", "body5" ],
]

article_list.each do |title, body|
    Article.create( title: title, body: body )
end
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
