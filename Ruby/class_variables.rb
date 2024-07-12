class Dinosaur
    # Variable de Clase
    @@classification = "Like a Reptile, but like a bird"

    # Metodo de clase que me permite ver el valor
    # de la variable de clase
    def self.classification
        @@classification
    end
end
puts Dinosaur.classification
# OUT: Like a Reptile, but like a bird

# Clase que hereda de Dinosaur
class TRex < Dinosaur
    # Reescribimos el valor
    # Por ende  se sobrescribe en la clase Dinosaur tambien.
    @@classification = "Big teeth bird!"
end

puts Dinosaur.classification
# OUT: Big teeth bird!
puts TRex.classification
# OUT: Big teeth bird!


This behaviour is unwanted most of the time and can be circumvented by using class-level instance variables. Class variables defined inside a module will not overwrite their including classes class variables:
module SomethingStrange
@@classification = "Something Strange"
end
class DuckDinosaur < Dinosaur include SomethingStrange
end
DuckDinosaur.class_variables
# => [:@@classification] SomethingStrange.class_variables # => [:@@classification]
DuckDinosaur.classification # => "Big teeth bird!"
