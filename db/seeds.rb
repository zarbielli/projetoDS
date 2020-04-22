# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


    admin = Admin.create(name:"admin", email: "admin@gmail.com", password: "123456", cnpj: "555", phone:"9999-9999")
    RegisterValidate.create(status: true, user: admin)

    donator1 = Donator.create(name:"Donator1", email: "donator1@gmail.com", password: "123456", cnpj: "10", phone:"9999-9999")
    RegisterValidate.create(status: false, user: donator1)

    donator2 = Donator.create(name:"Donator2", email: "donator2@gmail.com", password: "123456", cnpj: "20", phone:"9999-9999")
    RegisterValidate.create(status: false, user: donator2)
        
    donator3 = Donator.create(name:"Donator3", email: "donator3@gmail.com", password: "123456", cnpj: "30", phone:"9999-9999")
    RegisterValidate.create(status: false, user: donator3)
    
    donator4 = Donator.create(name:"Donator4", email: "donator4@gmail.com", password: "123456", cnpj: "40", phone:"9999-9999")
    RegisterValidate.create(status: false, user: donator4)
   
    donator5 = Donator.create(name:"Donator5", email: "donator5@gmail.com", password: "123456", cnpj: "50", phone:"9999-9999")
    RegisterValidate.create(status: false, user: donator5)

    charity1 = Charity.create(name:"Charity1", email: "charity1@gmail.com", password: "123456", cnpj: "11", phone:"9999-9999")
    RegisterValidate.create(status: false, user: charity1)
    
    charity2 = Charity.create(name:"Charity2", email: "charity2@gmail.com", password: "123456", cnpj: "12", phone:"9999-9999")
    RegisterValidate.create(status: false, user: charity2)

    charity3 = Charity.create(name:"Charity3", email: "charity3@gmail.com", password: "123456", cnpj: "13", phone:"9999-9999")
    RegisterValidate.create(status: false, user: charity3)

    charity4 = Charity.create(name:"Charity4", email: "charity4@gmail.com", password: "123456", cnpj: "14", phone:"9999-9999")
    RegisterValidate.create(status: false, user: charity4)

    charity5 = Charity.create(name:"Charity5", email: "charity5@gmail.com", password: "123456", cnpj: "15", phone:"9999-9999")
    RegisterValidate.create(status: false, user: charity5)

    donate1 = Donate.create(status: "created", donator_id: donator1.id)
    Product.create(description: "Arroz", validity: "10/10/2018", product_type:"Não Perecível" , unit_measurement:"Quilogramas", amount: "200", donate: donate1)
    Product.create(description: "Feijão", validity: "10/10/2018", product_type:"Não Perecível" , unit_measurement:"Quilogramas", amount: "300", donate: donate1)
    
    donate2 = Donate.create(status: "created", donator_id: donator1.id)
    Product.create(description: "Tomate", validity: "02/07/2018", product_type:"Perecível" , unit_measurement:"Quilogramas", amount: "100", donate: donate2)
    Product.create(description: "Banana", validity: "06/09/2018", product_type:"Perecível" , unit_measurement:"Quilogramas", amount: "250", donate: donate2)
    
    donate3 = Donate.create(status: "created", donator_id: donator1.id)
    Product.create(description: "Alface", validity: "03/09/2018", product_type:"Perecível" , unit_measurement:"Unidade", amount: "200", donate: donate3)
    Product.create(description: "Maçã", validity: "06/09/2018", product_type:"Perecível" , unit_measurement:"Quilogramas", amount: "250", donate: donate3)

