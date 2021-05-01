# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

# User.each do |user|
#     if user.user_confid_id.nil?
#         u = UserConfid.create(name: user.name, email: Faker::Internet.email, password_digest: UserConfid.digest('password'))
#         user.update_attribute(:user_confid_id, u.id)
#     end
# end

# 10.times do
#     u = UserConfid.new(name: Faker::Name.name, email: Faker::Internet.email, password_digest: UserConfid.digest('password'))
#     u.save
#     User.new(name: u.name, major: Faker::Educator.degree, class_year: Faker::Number.between(from: 1, to: 4), bio: Faker::TvShows::BigBangTheory.quote, title: Faker::Job.title, affiliation: Faker::University.name, user_confid_id: u.id)
# end

#  20.times do
#      Company.create(name: Faker::Company.name, field: Faker::Company.industry, stage: Faker::Company.type, description: Faker::Company.catch_phrase)
#  end

30.times do
    season = ["Fall", "Winter", "Summer"]
    p = Program.create(name: Faker::Job.title, field: Faker::Company.industry, paid: Faker::Boolean.boolean, work_auth: Faker::Boolean.boolean, class_standing: Faker::Number.between(from: 1, to: 4), company_id: Company.all.sample.id, season: season.sample)

    collab = rand(1..5)
    indep = rand(1..5)
    lead = rand(1..5)
    multi = rand(1..5)
    comp = rand(20..70)

    5.times do
        Review.create(user_id: User.all.sample.id, program_id: p.id, comment: Faker::Lorem.paragraphs, collaboration: collab, independence: indep, leadership: lead, multitasking: multi, compensation: comp)
    end

end

