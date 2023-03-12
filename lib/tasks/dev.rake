desc "Fill the database tables with some sample data"
task sample_data: :environment do
  p "Creating sample data"

#  starting = Time.now

 if Rails.env.development?

 User.destroy_all

  u = User.create(
    username: "alice",
    password_digest: "password",
    password_confirmation: "password",
    email: "alice@example.com"
    )
  end

#@user = User.new
#@user.email = "alice@email.com"
#@user.password = "password"
#@user.username = "Alice"
#@user.private = true
#@user.schedule = 0
#@user.pills_count = 0
#@user.save

#    @user << { username: "alice"}


#    @user.each do |user|
      #name = Faker::Name.first_name
      #User.create(
        #email: "#{@user.username}@example.com",
        #password: "password",
        #username: @user.username.#downcase,
 #       private: [true, false].sample
#      )
#    end
    
#    users = User.all

#    users.each do |user|
#      rand(15).times do
#          pill = user.pill.create(
#            caption: Faker::Quote.jack_handey,
#            image: "https://robohash.org/#{rand(9999)}"
#          )
#      end
#    end
#  end

#    ending = Time.now
 #   p "It took #{(ending - starting).to_i} seconds to create sample data"
  p "New user #{u.username} has been created"
#    p "There are now #{pill.count} pills"

end

