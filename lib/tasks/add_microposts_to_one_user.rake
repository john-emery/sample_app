namespace :db do
  desc "Add a micropost to one user"
  task add_micropost: :environment do
    user = User.find_by_name("Example User", limit: 1)
    user.microposts.create!(content: "abc 123 boo")
  end
end