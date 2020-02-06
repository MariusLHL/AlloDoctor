require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Doctor.destroy_all
Patient.destroy_all
Appointment.destroy_all
City.destroy_all
Speciality.destroy_all

lol = 
5.times do 
  Speciality.create(name: Faker::Lorem.word)
end
10.times do |i|
  City.create(city_name: Faker::Address.city)
  puts i
end

def ci
  rand = Faker::Number.within(range: City.first.id..City.last.id)
  t = City.find(rand)
  puts t
  return t
end


15.times do |i|
  Doctor.create(first_name:  Faker::Name.first_name,
   last_name:  Faker::Name.last_name, 
   zip_code: Faker::Address.zip_code, city: ci)
end

22.times do
  DoctorSpeciality.create(doctor_id: Faker::Number.within(range: Doctor.first.id..Doctor.last.id), speciality_id: Faker::Number.within(range: Speciality.first.id..Speciality.last.id))
end

40.times do |i|
  Patient.create(first_name:  Faker::Name.first_name,
   last_name: Faker::Name.last_name, city: ci)
end

30.times do |i|
  Appointment.create(doctor: Doctor.find(Faker::Number.within(range: Doctor.first.id..Doctor.last.id)), patient: Patient.find(Faker::Number.within(range: Patient.first.id..Patient.last.id)),date: Time.now,city: ci )
end