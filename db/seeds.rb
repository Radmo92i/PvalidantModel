

require 'faker'
20.times do 
    patients = Patient.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
end

20.times do 
    doctors = Doctor.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, speciality: Faker::Educator.subject, zip_code: Faker::Number.leading_zero_number(digits: 3))
end

20.times do
    appointments = Appointment.create!(date: Faker::Time.forward(days: 5,  period: :evening, format: :long))
end