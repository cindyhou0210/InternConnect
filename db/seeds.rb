# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

10.times do
    User.create(name: Faker::Name.name, major: Faker::Educator.degree, class_year: Faker::Number.between(from: 1, to: 4), bio: Faker::TvShows::BigBangTheory.quote, title: Faker::Job.title, affiliation: Faker::University.name)
end

5.times do
    Company.create(name: Faker::Company.name, field: Faker::Company.industry, stage: Faker::Company.type, description: Faker::Company.catch_phrase)
end

5.times do
    Program.create(name: Faker::Job.title, field: Faker::Company.industry, paid: Faker::Boolean.boolean, work_auth: Faker::Boolean.boolean, class_standing: Faker::Number.between(from: 1, to: 4), company_id: Company.all.sample.id)
end

5.times do
    Review.create(user_id: User.all.sample.id, comment: Faker::TvShows::RickAndMorty.quote)
end