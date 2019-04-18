#This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Nurse.create(name: "Bob", contract: "through 2020", emergency_contact: "Nancy, 917-443-9878", logged_in: true, password_digest: BCrypt::Password.create('password'))
Nurse.create(name: "Andrew", contract: "through 2020", emergency_contact: "Peter, 917-443-9878", logged_in: false, password_digest: BCrypt::Password.create('password'))
Nurse.create(name: "Kevin", contract: "through 2020", emergency_contact: "Face, 917-443-9878", logged_in: true, password_digest: BCrypt::Password.create('password'))
Nurse.create(name: "Sam", contract: "through 2020", emergency_contact: "Man, 917-443-9878", logged_in: false, password_digest: BCrypt::Password.create('password'))
Nurse.create(name: "Shuki", contract: "through 2020", emergency_contact: "Yep, 917-443-9878", logged_in: false, password_digest: BCrypt::Password.create('password'))

Unit.create(name:"A")
Unit.create(name:"B")
Unit.create(name:"C")
Unit.create(name:"D")

Resident.create(name: "William", age: 89, allergies: "Dairy", medications: "Lactaid", unit_id: 1)
Resident.create(name: "Richard", age: 90, allergies: "Bees", medications: "Aderall", unit_id: 1)
Resident.create(name: "Howard", age: 79, allergies: "Basically Everything", medications: "Stool Softener", unit_id: 2)
Resident.create(name: "Jeffrey", age: 85, allergies: "Dairy", medications: "Honey", unit_id: 2)
Resident.create(name: "Timothy", age: 33, allergies: "Nuts", medications: "Crack", unit_id: 1)
Resident.create(name: "Donna", age: 78, allergies: "Pickles", medications: "Crack", unit_id: 4)
Resident.create(name: "Karen", age: 87, allergies: "Chicken Parm", medications: "Crack", unit_id: 4)
Resident.create(name: "Zombie", age: 100, allergies: "Death", medications: "Crack", unit_id: 4)
Resident.create(name: "Patricia", age: 67, allergies: "Nuts", medications: "Crack", unit_id: 3)
Resident.create(name: "Elizabeth", age: 70, allergies: "Poison", medications: "Crack", unit_id: 3)
Resident.create(name: "Cheryl", age: 69, allergies: "Acid", medications: "Crack", unit_id: 3)


Admin.create(name: "Zev")

Alert.create(message: "Help!! neeed more staff", admin_id: 1, nurse_id: 1, resolved: true)
