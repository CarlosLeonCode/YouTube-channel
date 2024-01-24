class Human
  def initialize
    # is_public
    # is_private
    # is_protected
  end

  def is_public
    puts 'este es publico'
  end

  private

  def is_private
    puts 'este es privado'
  end

  protected
  
  def is_protected
    puts 'este es protegido'
  end
end

class Boy < Human
  def initialize
    @human = Human.new
    @human.is_protected
  end
end

class Alien
  def initialize
    @human = Human.new
    @human.is_protected
  end
end


# Boy.new
# Alien.new
