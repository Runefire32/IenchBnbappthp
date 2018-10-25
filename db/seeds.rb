require 'faker'
=begin
ActiveRecord::Base.connection.execute("DELETE FROM SQLITE_SEQUENCE")
Speciality.delete_all
City.delete_all
Doctor.delete_all
Patient.delete_all
Rdv.delete_all
=end 




 5.times do |city|
	city = City.create!(cityname: Faker::Address.city )
end 

5.times do
  dogsitter = Dogsitter.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name , city_id: rand(1..5))
end

5.times do
  dog = Dog.create!(name: Faker::Name.first_name , city_id: rand(1..5))
end



5.times do
  stroll = Stroll.create!(date: Faker::Date.between(50.days.ago, Date.today) , city_id: rand(1..5) , dog_id: rand(1..5), dogsitter_id: rand(1..5))
end




