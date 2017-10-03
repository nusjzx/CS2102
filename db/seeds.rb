User.create!(name:  "Example User",
             email: "example@railstutorial.org",
             password:              "foobar",
             password_confirmation: "foobar",
             admin: true)

99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password)
end

10.times do
  title = Faker::Company.industry
  Category.create!(title: title)
end


users = User.order(:created_at).take(10)

  
users.each { |user| 
  10.times do |n|
    title = Faker::Company.name
    description = Faker::Team.state
    start_date = DateTime.new
    duration = Random.rand(10000)
    total_amt = 10000 + Random.rand(10000)
    Category.find(n + 1).projects << user.projects.create!(title: title,
                                                      description: description,
                                                      start_date: start_date,
                                                      duration: duration,
                                                      total_amt: total_amt)
  end
}


users.each { |user| 
  10.times do |n|

    amount = Random.rand(1000)

    user.fund_records.create!(amount: amount,
                              project_id: Random.rand(100),
                              user_id: user.id)
  end
}