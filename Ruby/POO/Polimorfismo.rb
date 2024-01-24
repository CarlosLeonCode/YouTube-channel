class Animal
  def moverse
    puts "Me estoy moviendo!"
  end
end

class Gato < Animal
	# sobre escribe el método
  def moverse
    puts "Estoy corriendo!"
  end
end

class Pez < Animal
	# sobre escribe el método
  def moverse
    puts "Estoy nadando!"
  end
end

class Ave < Animal
	# sobre escribe el método
  def moverse
    puts "Estoy volando!"
  end
end

class Persona < Animal; end

# persona = Persona.new
# persona.moverse

# Duck Typing

def prender(object)
  if object.respond_to?(:turn_on)
    puts object.turn_on
  else
    puts "No responde al método prender!"
  end
end

class Automovil
	def turn_on
		'Encendiendo auto'
	end
end

class Persona; end

elon = Persona.new
mcqueen = Automovil.new

prender mcqueen
