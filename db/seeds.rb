# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


<<<<<<< HEAD
#user = User.new
#user.email = "usuario@index.com"
#user.password = "quitar1234"
#user.save!
#user.add_role "admin"
#
=======
user = User.new
user.email = "usuario@index.com"
user.password = "quitar1234"
user.save!
user.add_role "admin"

>>>>>>> a3b51b3ded1354efa505d162e435985bdcfe8882
#user = User.new
#user.email = "usuarioa@index.com"
#user.password = "usuarioa"
#user.save!
#user.add_role "Garita"
<<<<<<< HEAD
#
=======

>>>>>>> a3b51b3ded1354efa505d162e435985bdcfe8882
#user = User.new
#user.email = "usuariob@index.com"
#user.password = "usuariob"
#user.save!
#user.add_role "Corral"
<<<<<<< HEAD
#
=======

>>>>>>> a3b51b3ded1354efa505d162e435985bdcfe8882
#user = User.new
#user.email = "usuarioc@index.com"
#user.password = "usuarioc"
#user.save!
#user.add_role "Oficina"
<<<<<<< HEAD
#
=======

>>>>>>> a3b51b3ded1354efa505d162e435985bdcfe8882
#user = User.new
#user.email = "usuariod@index.com"
#user.password = "usuariod"
#user.save!
#user.add_role "PlantaA"
<<<<<<< HEAD
#
=======

>>>>>>> a3b51b3ded1354efa505d162e435985bdcfe8882
#user = User.new
#user.email = "usuarioe@index.com"
#user.password = "usuarioe"
#user.save!
#user.add_role "PlantaB"
<<<<<<< HEAD
#
=======

>>>>>>> a3b51b3ded1354efa505d162e435985bdcfe8882
#user = User.new
#user.email = "usuariof@index.com"
#user.password = "usuariof"
#user.save!
#user.add_role "SubA"
<<<<<<< HEAD
#
=======

>>>>>>> a3b51b3ded1354efa505d162e435985bdcfe8882
#user = User.new
#user.email = "usuariog@index.com"
#user.password = "usuariog"
#user.save!
#user.add_role "SubB"

#chofer = Driver.new(name:'Juan', last_name:'Perez', dni:12345556, observation:'pruebas')
#chofer.save

ciudad = City.new(name:"Rawson", province:"Chubut", cp:"9103")
ciudad.save

ciudad2 = City.new(name:"Esquel", province:"Chubut", cp:"9200")
ciudad2.save

ciudad3 = City.new(name:"Dolavon", province:"Chubut", cp:"9107")
ciudad3.save

ciudad4 = City.new(name:"28 de Julio", province:"Chubut", cp:"9107")
ciudad4.save

ciudad5 = City.new(name:"Trelew", province:"Chubut", cp:"9100")
ciudad5.save

ciudad6 = City.new(name:"Puerto Madryn", province:"Chubut", cp:"9200")
ciudad6.save

ciudad7 = City.new(name:"Gaiman", province:"Chubut", cp:"9105")
ciudad7.save


#abastecedor = Provider.new(name:"Barragan Hernan Edgardo", up_date:"21-02-2018", down_date:"", city:ciudad4, observation:"") 
#abastecedor.save

#abastecedor = Provider.new(name:"Axel Ginzery", up_date:"20-02-2016", down_date:"", city:ciudad2, observation:"El Nuevo Licenciado") 
#abastecedor.save

#transport = Transport.new(coupled:4433, capacity:30, plate:"jkl678", model:2003, weight:100)
#transport.save

range_troop_numer = RangeTroopNumber.new(min:150, max:152)
range_troop_numer.save

#tipo = Type.new(name:'A1', description:'a1', animal_type_id:1)
#tipo.save
type_list = [['1a 1','Cachorros Parrilleros', 3],
['2a 1','Cachorros Parrilleros', 3],
['A','Cachorros capones y hembras sin servicio', 3],
['A 0','Chanchas',3],
['A 1','Chanchas',3],
['A 2','Chanchas',3],
['A 3','Chanchas',3],
['A 4','Chanchas',3],
['B 0','Chanchas',3],
['B 1','Chanchas',3],
['B 2','Chanchas',3],
['B 3','Chanchas',3],
['B 4','Chanchas',3],
['C','Chanchas',3],
['A-B-C','Lechones',3],
['JJ 1','Cachorros capones y hembras sin servicio',3],
['J 0','Cachorros capones y hembras sin servicio',3],
['J 1','Cachorros capones y hembras sin servicio',3],
['J 2','Cachorros capones y hembras sin servicio',3],
['J 3','Cachorros capones y hembras sin servicio',3],
['J 4','Cachorros capones y hembras sin servicio',3],
['U 0','Cachorros capones y hembras sin servicio',3],
['U 1','Cachorros capones y hembras sin servicio',3],
['U 2','Cachorros capones y hembras sin servicio',3],
['U 3','Cachorros capones y hembras sin servicio',3],
['U 4','Cachorros capones y hembras sin servicio',3],
['N 0','Cachorros capones y hembras sin servicio',3],
['N 1','Cachorros capones y hembras sin servicio',3],
['N 2','Cachorros capones y hembras sin servicio',3],
['N 3','Cachorros capones y hembras sin servicio',3],
['N 4','Cachorros capones y hembras sin servicio',3],
['T 0','Cachorros capones y hembras sin servicio',3],
['T 1','Cachorros capones y hembras sin servicio',3],
['T 2','Cachorros capones y hembras sin servicio',3],
['T 3','Cachorros capones y hembras sin servicio',3],
['T 4','Cachorros capones y hembras sin servicio',3],
['Especiales 0','Chanchas',3],
['Especiales 1','Chanchas',3],
['Especiales 2','Chanchas',3],
['Especiales 3','Chanchas',3],
['Especiales 4','Chanchas',3],
['AA-1','S.C.E:Vacas, Novillitos, Vaquillonas y Terneros',1],
['AA-2','S.C.E:Vacas, Novillitos, Vaquillonas y Terneros',1],
['AA-3','S.C.E:Vacas',1],
['A-0','S.C.E:Mamones',1],
['A-1','S.C.E:Vacas, Novillitos, Mamones, Vaquillonas y Terneros',1],
['A-2','S.C.E:Vacas, Novillitos, Vaquillonas y Terneros',1],
['A-3','S.C.E:Vacas',1],
['B-0','S.C.E:Mamones',1],
['B-1','S.C.E:Vacas, Novillitos, Mamones, Vaquillonas y Terneros',1],
['B-2','S.C.E:Vacas, Novillitos, Vaquillonas y Terneros',1],
['B-3','S.C.E:Vacas',1],
['C-0','S.C.E:Mamones',1],
['C-1','S.C.E:Vacas, Novillitos, Mamones, Vaquillonas y Terneros',1],
['C-2','S.C.E:Vacas, Novillitos, Vaquillonas y Terneros',1],
['C-3','S.C.E:Vacas',1],
['JJ-1','S.C.E:Novillo',1],
['JJ-2','S.C.E:Novillo',1],
['JJ-3','S.C.E:Novillo',1],
['J-1','S.C.E:Novillo',1],
['J-2','S.C.E:Novillo',1],
['J-3','S.C.E:Novillo',1],
['U-1','S.C.E:Novillo',1],
['U-2','S.C.E:Novillo',1],
['U-3','S.C.E:Novillo',1],
['U2-1','S.C.E:Novillo',1],
['U2-2','S.C.E:Novillo',1],
['U2-3','S.C.E:Novillo',1],
['AA-0','S.C: Vacas, Novillitos, Vaquillonas, Terneros, Toros',1],
['AA-1','S.C: Toros',1],
['AA-2','S.C: Toros',1],
['AA-3','S.C: Novillitos, Vaquillonas',1],
['AA-4','S.C: Vacas',1],
['A','S.C: Novillos',1],
['A-0','S.C: Vacas, Novillitos, Vaquillonas, Terneros, Toros',1],
['A-1','S.C: Toros',1],
['A-2','S.C: Toros',1],
['A-3','S.C: Novillitos, Vaquillonas',1],
['A-4','S.C: Vacas',1],
['B-0','S.C: Vacas, Novillitos, Vaquillonas, Terneros, Toros',1],
['B-1','S.C: Toros',1],
['B-2','S.C: Toros',1],
['B-3','S.C: Novillitos, Vaquillonas',1],
['B-4','S.C: Vacas',1],
['C','S.C: Toros',1],
['C-0','S.C: Vacas, Novillitos, Vaquillonas, Terneros',1],
['C-3','S.C: Novillitos, Vaquillonas',1],
['C-4','S.C: Vacas',1],
['D-0','S.C: Vacas, Novillitos, Vaquillonas, Terneros',1],
['D-1','S.C: Vacas, Novillitos, Vaquillonas, Terneros',1],
['D-2','S.C: Vacas, Novillitos, Vaquillonas, Terneros',1],
['D-3','S.C: Vacas, Novillitos, Vaquillonas',1],
['D-4','S.C: Vacas',1],
['E-0','S.C: Vacas, Novillitos, Vaquillonas, Terneros',1],
['E-1','S.C: Vacas, Novillitos, Vaquillonas, Terneros',1],
['E-2','S.C: Vacas',1],
['E-3','S.C: Vacas',1],
['F','S.C: Vacas, Novillitos, Vaquillonas, Terneros',1],
['JJ-0','S.C: Novillos',1],
['JJ-4','S.C: Novillos',1],
['J-0','S.C: Novillos',1],
['J-4','S.C: Novillos',1],
['N-0','S.C: Novillos',1],
['N-1','S.C: Novillos',1],
['N-2','S.C: Novillos',1],
['N-3','S.C: Novillos',1],
['N-4','S.C: Novillos',1],
['T-0','S.C: Novillos',1],
['T-4','S.C: Novillos',1],
['U-0','S.C: Novillos',1],
['U2-0','S.C: Novillos',1],
['U2-4','S.C: Novillos',1],
['U4','S.C: Novillos',1],
['Ovino','SIN ESPECIFICAR', 2]]

type_list.each do |name, description,animal_type_id|
	Type.find_or_create_by(name:name, description:description, animal_type_id:animal_type_id)
end

animal_types_list = [
'Bovino',
'Ovino',
'Porcino'
]
animal_types_list.each do |description|
	AnimalType.find_or_create_by(description:description)
end

animals_list = [['Mamón',1,250,'MM'],
['Ternero M',1,300,'TM'],
['Ternero H',1,300,'TH'],
['Vaquillona',1,350,'VQ'],
['Novillito',1,350,'NT'],
['Novillo',1,420,'NO'],
['Vaca',1,0,'VA'],
['Toro',1,0,'TOR'],
['Mamones',2,0,'MA'],
['Borregos',2,0,'TOR'],
['Corderos',2,0,'CD'],
['Capones y Ovejas',2,0,'CV'],
['Capones',3,0,'CA'],
['Chanchas',3,0,'CH'],
['Cachorros',3,0,'CO'],
['Padrillos',3,0,'PA'],
['Torunos',3,0,'TO'],
['Lechones',3,0,'LE']]
animals_list.each do |description, animal_type_id, average_value, initials|
	Animal.find_or_create_by(description:description, animal_type_id:animal_type_id, average_value:average_value, initials:initials)
end

sub_product_types_list = [
'Mondongo',
'Chinchulines',
'Corazón',
'Lengua',
'Sesos',
'Cuero']
sub_product_types_list.each do |description|
	SubProductType.find_or_create_by(description:description)
end

places_list = [
'Corral 1A',
'Corral 1B',
'Corral 2A',
'Corral 2B',]

places_list.each do |description|
	Place.find_or_create_by(description:description)
end


#---- Creando Posiciones
positions_list = [
['Corralero','Trabaja en los corrales'],
['Sereno','Cuida la planta'],
['Administrativo','Papeleo']]
positions_list.each do |name, description|
	Position.find_or_create_by(name: name, description: description)
end

#---- Creando Agentes
agents_list = [
['Amandi', 'Federico', 31636675, 1, '01-10-2017'],
['Geoffroy', 'Silvio', 31923381, 2, '01-08-2017']]

agents_list.each do |last_name, name, dni, position_id, up_date|
	Agent.find_or_create_by(last_name: last_name, name: name, dni:dni, position_id: position_id, up_date:up_date)
end

#---- Creando un Turno
#turno = Turn.new(date:'27-03-2018', description:'algo 1')
#turno.save
#turno = Turn.new(date:'27-01-2018', description:'algo 2')
#turno.save
#---- Creando Detalles de Turno
#turn_details_list = [
#	[1, 1, 1, 'Detalle 1'],
#	[2, 2, 2, 'Detalle 2']
#]

#turn_details_list.each do |turn_id, agent_id, place_id, observation|
#	TurnDetail.find_or_create_by(turn_id:turn_id, agent_id:agent_id, place_id:place_id, observation:observation)
#end

