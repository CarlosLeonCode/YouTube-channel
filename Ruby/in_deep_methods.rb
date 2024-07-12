class Restaurant
  # Usando define_method para crear métodos dinámicamente
  MENU_ITEMS = {
    burger: 5.99,
    fries: 2.99,
    soda: 1.49
  }

  MENU_ITEMS.each do |item, price|
    define_method("order_#{item}") do
      puts "Ordered a #{item.to_s.capitalize} for $#{price}"
    end
  end

  # Método sin argumentos
  def welcome
    puts "Welcome to our restaurant!"
  end

  # Método con argumentos
  def order_item(item)
    puts "Ordered a #{item}"
  end

  # Método con valores predeterminados
  def order_combo(main: 'burger', side: 'fries', drink: 'soda')
    puts "Ordered a combo with #{main}, #{side}, and a #{drink}"
  end

  # Método con argumentos nombrados
  def custom_order(main:, side:, drink:)
    puts "Ordered a custom meal with #{main}, #{side}, and #{drink}"
  end

  # Método de dispersión simple (splat)
  def order_multiple(*items)
    puts "Ordered multiple items: #{items}"
  end

  # Método de dispersión doble (double splat)
  def order_special(**items)
    puts items
    # puts "Family Order"
    # items.each do |item, quantity|
    #   puts "Ordered #{quantity} #{item}(s)"
    # end
  end
end

# Uso del sistema de pedidos
restaurant = Restaurant.new
restaurant.welcome                          # Método sin argumentos
restaurant.order_item('pizza')              # Método con argumentos
restaurant.order_combo(main: 'steak')       # Sobreescribiendo un valor predeterminado
restaurant.order_combo(main: 'taco')        
restaurant.custom_order(main: 'steak', side: 'salad', drink: 'wine')  # Argumentos nombrados
restaurant.order_multiple('burger', 'fries', 'soda', 'ice cream', 'chocolate candy')  # Dispersión simple
restaurant.order_special(burger: 2, fries: 3, soda: 2, sausage: 1)  # Dispersión doble

# Usando metodos dinamicos
restaurant.order_burger
restaurant.order_fries
restaurant.order_soda
