# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Tag.create(name: 'Conferencia', category: 'Tipo')
Tag.create(name: 'Concierto', category: 'Tipo')
Tag.create(name: 'Exposición', category: 'Tipo')
Tag.create(name: 'Ciencia y Tecnología', category: 'Area')
Tag.create(name: 'Arte y Cultura', category: 'Area')
Tag.create(name: 'Economía y Política', category: 'Area')
Tag.create(name: 'Deporte y Recreación', category: 'Area')

Place.create(name: '102 Biblioteca Central Gabriel García Márquez', latitude: 4.635367, longitude: -74.083132)
Place.create(name: '103 Polideportivo - División de registro', latitude: 4.634897, longitude: -74.082928)
Place.create(name: '104 Auditorio León de Greiff', latitude: 4.635673, longitude: 74.082437)
Place.create(name: '201 Facultad de Derecho, Ciencias Políticas y Sociales', latitude: 4.635431, longitude: -74.083821)
Place.create(name: '205 Edificio Orlando Fals Borda: Departamento de Sociología', latitude: 4.634496, longitude: -74.083879)
Place.create(name: '207 Museo de Arquitectura Leopoldo Rother', latitude: 4.634049, longitude: -74.083165)
Place.create(name: '210 Facultad de Odontología', latitude: 4.634579, longitude: -74.085380)
Place.create(name: '212 Aulas de Ciencias Humanas', latitude: 4.634051, longitude: -74.084646)
Place.create(name: '214 Edificio Antonio Nariño - Departamento de Lingüística.', latitude: 4.633431, longitude: -74.084066)
Place.create(name: '217 Edificio Francisco de Paula Santander: Diseño Gráfico', latitude: 4.633408, longitude: -74.083219)
Place.create(name: '224 Edificio Manuel Ancízar', latitude: 4.633900, longitude: -74.086089)
Place.create(name: '225 Edificio Rogelio Salmona de Postgrados en Ciencias Humanas', latitude: 4.634279, longitude: -74.086459)
Place.create(name: '228 Edificio de Enfermería Nuevo', latitude: 4.635327, longitude: -74.084716)
Place.create(name: '231 Departamento de Lenguas Extranjeras', latitude: 4.633114, longitude: -74.084383)
Place.create(name: '235 Portería Peatonal Calle 26', latitude: 4.632472, longitude: -74.083956)
Place.create(name: '238 Postgrados de Ciencias Económicas', latitude: 4.632654, longitude: -74.083256)
Place.create(name: '251 Capilla', latitude: 4.632916, longitude: -74.081449)
Place.create(name: '252 Salida vehicular de la capilla', latitude: 4.633482, longitude: -74.080770)
Place.create(name: '253 Entrada vehicular de la capilla', latitude: 4.632659, longitude: -74.082449)
Place.create(name: '305 Conservatorio de Música', latitude: 4.635525, longitude: -74.081293)
Place.create(name: '310 Facultad de Ciencias Económicas', latitude: 4.636985, longitude: -74.080724)
Place.create(name: '314 Postgrados en Arquitectura - SINDU', latitude: 4.636151, longitude: -74.080585)
Place.create(name: '317 Museo de Arte', latitude: 4.634589, longitude: -74.080810)
Place.create(name: '401 Edificio Julio Garavito Armero, Ingeniería', latitude: 4.637273, longitude: -74.082865)
Place.create(name: '404 Edificio Takeuchi Departamentos de Matemáticas, Física y Estadística', latitude: 4.637803, longitude: -74.082377)
Place.create(name: '405 Postgrados en Matemáticas y Física', latitude: 4.637733, longitude: -74.081712)
Place.create(name: '406 Instituto de Extensión e Investigación IEI', latitude: 4.638407, longitude: -74.082650)
Place.create(name: '408 Laboratorio de Hidráulica - Hangar y CADE Ingeniería', latitude: 4.638332, longitude: -74.081454)
Place.create(name: '411 Laboratorios de Ingeniería, Patios', latitude: 4.639198, longitude: -74.082527)
Place.create(name: '412 Laboratorios de Ingeniería Química', latitude: 4.638771, longitude: -74.083144)
Place.create(name: '413 Observatorio Astronómico', latitude: 4.639754, longitude: -74.083315)
Place.create(name: '414 Canchas de Tenis T-2, T-3 y T-4', latitude: 4.639685, longitude: -74.083814)
Place.create(name: '421 Departamento de Biología', latitude: 4.640610, longitude: -74.081915)
Place.create(name: '425 Instituto de Ciencias Naturales', latitude: 4.642230, longitude: -74.081915)
Place.create(name: 'Museo de Historia Natural', latitude: 4.642385, longitude: -74.081647)
Place.create(name: '426 Instituto de Genética', latitude: 4.642861, longitude: -74.082945)
Place.create(name: '431 Colegio IPARM Instituto Pedagógico Arturo Ramírez Montúfar', latitude: 4.641112, longitude: -74.082967)
Place.create(name: '450 Departamento de Farmacia', latitude: 4.637231, longitude: -74.083653)
Place.create(name: '451 Departamento de Química', latitude: 4.637685, longitude: -74.083761)
Place.create(name: '453 Aulas de Ingeniería', latitude: 4.638546, longitude: -74.083637)
Place.create(name: '454 Edificio de Ciencia y Tecnología CyT', latitude: 4.638113, longitude: -74.084651)
Place.create(name: '471 Facultad de Medicina', latitude: 4.636370, longitude: -74.084458)
Place.create(name: '476 Facultad de Ciencias', latitude: 4.637268, longitude: -74.085552)
Place.create(name: '481 Facultad de Medicina Veterinaria y Zootecnia', latitude: 4.636086, longitude: -74.085381)
Place.create(name: 'La playita', latitude: 4.636119, longitude: -74.083203)
Place.create(name: 'Bosque el Jaguar', latitude: 4.636675, longitude: -74.083493)
Place.create(name: 'Plaza Che', latitude: 4.635530, longitude: -74.0827848)
Place.create(name: 'Comedor Central', latitude: 4.634424, longitude: -74.082677)
Place.create(name: 'La Perola', latitude: 4.634776, longitude: -74.082822)
Place.create(name: '500 Departamento de Agronomía', latitude: 4.635856, longitude: -74.087189)
Place.create(name: '501 Clínica de Grandes Animales', latitude: 4.636177, longitude: -74.085874)
Place.create(name: '507 Clínica de Pequeños Animales', latitude: 4.636578, longitude: -74.086341)
Place.create(name: '561 Posgrados de Veterinaria y Zootecnia', latitude: 4.637509, longitude: -74.087730)
Place.create(name: '571 Hemeroteca Nacional', latitude: 4.636637, longitude: -74.091078)
Place.create(name: 'Parque Húmboldt', latitude: 4.637332, longitude: -74.086148)
Place.create(name: '603 Portería Calle 45', latitude: 4.634937, longitude: -74.080282)
Place.create(name: '700 Portería Carrera 45', latitude: 4.639223, longitude: -74.088750)
Place.create(name: '701 Departamento de Cine y Televisión', latitude: 4.640514, longitude: -74.085574)
Place.create(name: '731 Estadio de fútbol "Alfonso López Pumarejo"', latitude: 4.640321, longitude: -74.086475)
Place.create(name: '761 Concha Acústica', latitude: 4.639070, longitude: -74.087232)
Place.create(name: '861 Edificio Uriel Gutiérrez', latitude: 4.639770, longitude: -74.090080)
Place.create(name: '862 Unidad Camilo Torres', latitude: 4.640760, longitude: -74.090633)
Place.create(name: '901 Portería Calle 53', latitude: 4.643538, longitude: -74.083358)
Place.create(name: '933 CASE CAN Area de salúd', latitude: 4.647497, longitude: -74.096464)
Place.create(name: '934 Complejo Clínica de Santa Rosa', latitude: 4.648817, longitude: -74.095439)

# id 1
User.create(email: "dcnavarreter@unal.edu.co", password: "abc123", name: "Diana Navarrete", nickname: "dcnava")
# id 2
User.create(email: "dafrodriguezro@unal.edu.co", password: "abc123", name: "David Rodriguez", nickname: "dfrod")

Event.create(title: "Evento 1", 
            date: Time.zone.now, 
            user_id: 1, 
            place_id: 1, 
            place_detail: "Detalle del sitio 1",
            details: "Detalles", 
            poster: "https://www.las2orillas.co/wp-content/uploads/2017/04/UNal-1-780x514.jpg", 
            created_at: Time.zone.now, 
            updated_at: nil)

Event.create(title: "Evento 2", 
            date: Time.zone.now, 
            user_id: 2, 
            place_id: 3, 
            place_detail: "Detalle del sitio 3", 
            details: "Detalles", 
            poster: "https://www.las2orillas.co/wp-content/uploads/2017/04/UNal-1-780x514.jpg", 
            created_at: Time.zone.now, 
            updated_at: nil)
EventTag.create(event_id:1, tag_id:3)
EventTag.create(event_id:2, tag_id:5)
LikedEvent.create(event_id:1, user_id:2)
Interest.create(user_id:1, tag_id:2)
Interest.create(user_id:1, tag_id:5)
UserFollow.create(follower_id:1, user_followed_id:2)
=begin
Place.create(name: 'Cancha de Fútbol #1', latitude: 4.63, longitude: -74.08)
Place.create(name: 'Cancha de Fútbol #2', latitude: 4.63, longitude: -74.08)
Place.create(name: 'Cancha de Fútbol #3', latitude: 4.63, longitude: -74.08)
Place.create(name: 'Cancha de Fútbol #4', latitude: 4.63, longitude: -74.08)
Place.create(name: 'Cancha de Fútbol #5', latitude: 4.63, longitude: -74.08)
Place.create(name: 'Cancha de Fútbol #6', latitude: 4.63, longitude: -74.08)
Place.create(name: 'Cancha de Fútbol #7', latitude: 4.63, longitude: -74.08)
Place.create(name: 'Cancha de Fútbol #8', latitude: 4.63, longitude: -74.08)
Place.create(name: 'Cancha de Tenis #1', latitude: 4.63, longitude: -74.08)
Place.create(name: 'Cancha de Tenis #2', latitude: 4.63, longitude: -74.08)
Place.create(name: 'Cancha de Tenis #3', latitude: 4.63, longitude: -74.08)
Place.create(name: 'Cancha de Tenis #4', latitude: 4.63, longitude: -74.08)
Place.create(name: 'Cancha Sintética #1', latitude: 4.63, longitude: -74.08)
Place.create(name: 'Cancha Sintética #2', latitude: 4.63, longitude: -74.08)
Place.create(name: 'Cancha Sintética #3', latitude: 4.63, longitude: -74.08)
Place.create(name: 'Cancha de Asfalto #1', latitude: 4.63, longitude: -74.08)
Place.create(name: 'Cancha de Asfalto #2', latitude: 4.63, longitude: -74.08)
Place.create(name: 'Cancha de Asfalto #3', latitude: 4.63, longitude: -74.08)
=end