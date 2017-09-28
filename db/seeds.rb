# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

## creo los usuarios
User.destroy_all
User.create(email: 'vladi1@gmail.com', password: '123456', password_confirmation: '123456', name: 'Vladimir 1', photo: "https://cdn4.iconfinder.com/data/icons/dragon/512/User.png")
User.create(email: 'vladi2@gmail.com', password: '123456', password_confirmation: '123456', name: 'Vladimir 2', photo: "https://cdn4.iconfinder.com/data/icons/business-users-1/128/man_black_business.png")
User.create(email: 'vladi3@gmail.com', password: '123456', password_confirmation: '123456', name: 'Vladimir 3', photo: "https://cdn1.iconfinder.com/data/icons/ecommerce-and-business-icon-set/256/admin.png")
User.create(email: 'vladi4@gmail.com', password: '123456', password_confirmation: '123456', name: 'Vladimir 4', photo: "https://cdn4.iconfinder.com/data/icons/VISTA/education_icons/png/400/graduated.png")

## creo las Tareas
Task.destroy_all
Task.create(name: 'Comer una empanada', photo: "http://assets.kraftfoods.com/recipe_images/opendeploy/76266_640x428.jpg")
Task.create(name: 'Bailar un pie de cueca', photo: "http://www.diarioviregion.cl/antiguo/fck/images/stories/Pag%204-2_-%20Pareja%20de%20hermanos.JPG")
Task.create(name: 'Tomarse un terremoto', photo: "https://media.betazeta.com/sabrosia/2012/09/terremotos.jpg")
Task.create(name: 'Jugar una pichanga', photo: "https://k31.kn3.net/taringa/2/2/7/7/5/3/13/mazinger-zeta/027.jpg?719")
Task.create(name: 'Ir a una fonda', photo: "http://www.24horas.cl/incoming/article268783.ece/ALTERNATES/w620h350/fondas.jpg")
Task.create(name: 'Encumbrar volantin', photo: "http://elpinguino.com/uploads/imagenes/17df2686e4cda17140941ae6650a6815.jpg")
Task.create(name: 'Comer un buen Asado', photo: "http://mqltv.com/wp-content/uploads/2016/06/asado.jpg")
Task.create(name: 'Ir al remate de las Fondas', photo: "http://img.eltipografo.cl/media/2014/09/Fondas-1-22.jpg")
Task.create(name: 'Quedar Cocido como Piojo', photo: "http://www.listeilor.com/wp/wp-content/uploads/2011/12/1_Seguirtomando.jpg")
