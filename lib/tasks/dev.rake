task sample_data: :environment do
  p "Creating sample data"

  starting = Time.now

  if Rails.env.development?

    User.destroy_all

    @user.username << "alice"


    @user.username.each do |username|
      name = Faker::Name.first_name
      User.create(
        email: "#{@user.username}@example.com",
        password: "password",
        username: @user.username.downcase,
        private: [true, false].sample
      )
    end
    
#    users = User.all

#    users.each do |user|
#      rand(15).times do
#          pill = user.pill.create(
#            caption: Faker::Quote.jack_handey,
#            image: "https://robohash.org/#{rand(9999)}"
#          )
#      end
    end
  end

    ending = Time.now
#    p "It took #{(ending - starting).to_i} seconds to create sample data"
#    p "There are now #{User.count} users"
#    p "There are now #{pill.count} pills"

#end
