# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Nurse.create(name: "Bob", contract: "through 2020", emergency_contact: "Nancy, 917-443-9878", logged_in: true)
Nurse.create(name: "Andrew", contract: "through 2020", emergency_contact: "Peter, 917-443-9878", logged_in: false)
Nurse.create(name: "Kevin", contract: "through 2020", emergency_contact: "Face, 917-443-9878", logged_in: true)
Nurse.create(name: "Sam", contract: "through 2020", emergency_contact: "Man, 917-443-9878", logged_in: false)
Nurse.create(name: "Shuki", contract: "through 2020", emergency_contact: "Yep, 917-443-9878", logged_in: false)



Resident.create(name: "Ugly", age: 89, allergies: "Dairy", medications: "Lactaid")
Resident.create(name: "Annoying", age: 90, allergies: "Bees", medications: "Aderall")
Resident.create(name: "Howard", age: 79, allergies: "Basically Everything", medications: "Stool Softener")
Resident.create(name: "Drawhod", age: 85, allergies: "Dairy", medications: "Honey")
Resident.create(name: "Alex", age: 33, allergies: "Nuts", medications: "Crack")

Assignment.create(nurse_id: 1, resident_id: 1)
Assignment.create(nurse_id: 2, resident_id: 2)
Assignment.create(nurse_id: 3, resident_id: 2)
Assignment.create(nurse_id: 4, resident_id: 4)
Assignment.create(nurse_id: 4, resident_id: 5)


Appointment.create(time: DateTime.now, resident_id: 1)

Admin.create(name: "Zev")

Alert.create(message: "Help!! neeed more staff", admin_id: 1, nurse_id: 1)
