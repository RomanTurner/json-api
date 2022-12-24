require 'faker'
User.destroy_all
Post.destroy_all

100.times do
    f, l = Faker::FunnyName.two_word_name.split(" ")
    posts = Array(1..10).map{|_| {title:Faker::Book.title, body: Faker::Books::Lovecraft.paragraphs} }
    User.create(first_name:f,  last_name: l, posts_attributes: posts)
end
