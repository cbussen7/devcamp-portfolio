# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
# movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# Character.create(name: 'Luke', movie: movies.first)

3.times do |topic|
  Topic.create!(
    title: "Topic #{topic}",
  )
end

puts "3 topics created"

10.times do |blog|
  Blog.create!(
    title: "My Blog Post #{blog}",
    body: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsa commodi a sit libero, expedita velit, minima nemo
    esse voluptates unde, cumque et inventore explicabo. Explicabo debitis alias nihil suscipit voluptate!",
    topic_id: Topic.last.id,
  )
end

puts "10 blog posts created"

5.times do |skill|
  Skill.create!(
    title: "Rails #{skill}",
    percent_utilized: 15,
  )
end

puts "5 skills created"

8.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio Title: #{portfolio_item}",
    subtitle: "Ruby on Rails",
    body: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime repellendus odit voluptate fugit laudantium
facilis molestias corporis ullam quis sit, eos dignissimos?",
    thumb_image: "https://place-hold.it/350x200",
    main_image: "https://place-hold.it/600x400",
  )
end

1.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio Title: #{portfolio_item}",
    subtitle: "Angular",
    body: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime repellendus odit voluptate fugit laudantium
facilis molestias corporis ullam quis sit, eos dignissimos?",
    thumb_image: "https://place-hold.it/350x200",
    main_image: "https://place-hold.it/600x400",
  )
end
puts "9 portfolio items created"

3.times do |technology|
  Portfolio.last.technologies.create!(
    name: "Technology #{technology}",
  )
end
puts "3 technologies created"

User.create! do |u|
  u.email = "test@test.com"
  u.password = "pinkroster"
  u.update!(roles: "site_admin")
end
