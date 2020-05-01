
class Adventure
  def intro
  '
  =====================
  LA MANSIÓN DEL TERROR
  =====================

  Fernando es un chico de 17 años, su vida es aparentemente normal.
  Su vecina Carolina, con la que trata de salir desde los 11 años,
  tiene una especial atracción por todo lo paranormal. Lo lejos de
  sus casas hay una pequeña vivienda que según cuentan está embrujada
  y a la cual llaman la mansión del terror. Según Carolina, todo aquél
  que entra queda atrapado y sin salida posible. Fernando, que además
  de no creer en fantasmas es muy dado a las bravuconadas, ha hecho
  una apuesta con Carolina. Si consigue salir de la casa, irá con él
  al baila de fin de curso. Fernando ha entrado por una ventana, que
  se ha cerrado de golpe cortando su única salida.
  ¿Conseguirá Fernando salir de la mansión del terror?
  ¿Conseguirá Fernando ir al baila con Carolina?
  Todo depende de ti ahora...
'
  end

  def create
    add_room 'Dormitorio', { id: '1',
      desc: 'Estás es una pequeña habitación pintada de blanco.
Junto a tí puedes ver una cama y una mesita de noche.',
      doors: {'sur' => 'Pasillo1'} }
    add_actor 'player', { room: 'Dormitorio' }
    add_room 'Cocina', { id: '2',
      desc: 'Estás es una cocina.
Puedes ver un fregadero con platos, una mesa pequeña.
Una nevera al fondo hace ruido.',
      doors: { 'sur' => 'Pasillo2' } }
    add_room 'Salón', { id: '3',
      desc: 'Estás es el salón de la casa.
Puedes ver una gran mesa rodeada de sillas.',
      doors: { 'sur' => 'Pasillo3' } }
    add_room 'Pasillo1', { id: '4',
      desc: 'Estás es el pasillo.
Puede ver una ventana con rejas en una de las paredes.',
      doors: { 'norte' => 'Dormitorio', 'sur' => 'Almacén', 'este' => 'Pasillo2'} }
    add_room 'Pasillo2', { id: '5',
     desc: 'Estás es el pasillo.
Puedes ver una puerta que parece ser la entrada principal de la casa.',
     doors: { 'norte' => 'Cocina', 'oeste' => 'Pasillo1', 'este' => 'Pasillo3'} }
   add_room 'Pasillo3', { id: '6',
     desc: 'Estás es el pasillo.
Hay una ventana cerrada en una de las paredes.',
     doors: { 'norte' => 'Salón', 'oeste' => 'Pasillo2' } }
   add_room 'Almacén', { id: '7',
      desc: 'Estás es un almacén pintado de verde.
Puedes ver un motón de cajas repartidas por la habitación.',
      doors: { 'norte' => 'Pasillo1' } }

#
#Listado de los objetos
#Tipo de la fila:Identificador:
#Estado actual:Descripción1:Descripción2
#Habitación:Lo tiene
#
#Objeto:hueso:1:Un hueso::2:0
#Objeto:llave:1:Una llave sobre la lámpara::3:0
#Objeto:escalera:1:Una escalera::9:0
#Objeto:perro:1:Un perro rabioso:Un perro comiéndose un hueso:9:0
  end

  def logic
    # puts "[INFO] Apply logic..."
  end

end
