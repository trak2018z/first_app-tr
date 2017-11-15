# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'faker'
namespace :db do




10.times do
  #posts params
  cont = Faker::Lorem.sentence(3)
  title = Faker::Lorem.sentence(6)
  url = Faker::Internet.domain_name
  #users params
  email = Faker::Internet.email
  pass = Faker::Internet.password(8)

  pid = rand(10)
  uid = rand(10)

  #comments params
  comm_content =   title = Faker::Lorem.sentence(2)

  Comment.create!( content: comm_content,
                    post_id: pid,
                    user_id: uid
)


  Post.create!(
                  title: title,
                  url: url,
                  content: cont
  )


  User.create!(
                email: email,
                password: pass,
                password_confirmation: pass)
  end
end

#10.times do
#  cont = Faker::Lorem.sentence(3)
#  title = Faker::Lorem.sentence(3)


#  users.each {|user| user.posts.create!(title: )}
#end




puts "Dodano nowego userA"
