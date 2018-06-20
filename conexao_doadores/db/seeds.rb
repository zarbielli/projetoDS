# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


    admin = Admin.create(email: "admin@gmail.com", password: "123456", cnpj: "555")
    RegisterValidate.create(status: true, user: admin)

    donator1 = Donator.create(email: "donator1@gmail.com", password: "123456", cnpj: "10")
    RegisterValidate.create(status: false, user: donator1)

    donator2 = Donator.create(email: "donator2@gmail.com", password: "123456", cnpj: "20")
    RegisterValidate.create(status: false, user: donator2)
        
    donator3 = Donator.create(email: "donator3@gmail.com", password: "123456", cnpj: "30")
    RegisterValidate.create(status: false, user: donator3)
    
    donator4 = Donator.create(email: "donator4@gmail.com", password: "123456", cnpj: "40")
    RegisterValidate.create(status: false, user: donator4)
   
    donator5 = Donator.create(email: "donator5@gmail.com", password: "123456", cnpj: "50")
    RegisterValidate.create(status: false, user: donator5)

    charity1 = Charity.create(email: "charity1@gmail.com", password: "123456", cnpj: "11")
    RegisterValidate.create(status: false, user: charity1)
    
    charity2 = Charity.create(email: "charity2@gmail.com", password: "123456", cnpj: "12")
    RegisterValidate.create(status: false, user: charity2)

    charity3 = Charity.create(email: "charity3@gmail.com", password: "123456", cnpj: "13")
    RegisterValidate.create(status: false, user: charity3)

    charity4 = Charity.create(email: "charity4@gmail.com", password: "123456", cnpj: "14")
    RegisterValidate.create(status: false, user: charity4)

    charity5 = Charity.create(email: "charity5@gmail.com", password: "123456", cnpj: "15")
    RegisterValidate.create(status: false, user: charity5)
