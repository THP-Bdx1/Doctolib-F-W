# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

5.times do
    doctors=Doctor.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, specialty: Faker::Job.position, postal_code: Faker::Address.zip_code)
end

15.times do
    patients=Patient.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
end

40.times do
    appointments=Appointment.create!(date: Faker::Time.between(70.days.ago, Date.today, :day), doctor_id: Random.rand(1..5), patient_id: Random.rand(1..15))
end