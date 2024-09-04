# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Article.create([
  {title: "My awesome title 1", content: "The content of my awesome article 1", slug: "my-awesome-article-1"},
  {title: "My awesome title 2", content: "The content of my awesome article 2", slug: "my-awesome-article-2"},
  {title: "My awesome title 3", content: "The content of my awesome article 3", slug: "my-awesome-article-3"},
])