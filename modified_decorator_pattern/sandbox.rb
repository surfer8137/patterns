require_relative 'component/coffee.rb'
require_relative 'component/concrete_components/basic_coffee.rb'
require_relative 'component/decorator/coffee_decorator.rb'
require_relative 'component/decorator/concrete_decorators/with_sugar.rb'
require_relative 'component/decorator/concrete_decorators/with_chocolate.rb'


coffee = WithSugar.new (
          WithChocolate.new (
            WithSugar.new (
              WithChocolate.new (
                BasicCoffee.new ))))

puts coffee.information

puts 'removing sugar!'
coffee = coffee.remove_decorator 'WithSugar'

puts coffee.information

puts 'removing chocolate!'
coffee = coffee.remove_decorator 'WithChocolate'

puts coffee.information

puts 'removing sugar!'
coffee = coffee.remove_decorator 'WithSugar'

puts coffee.information

puts 'removing chocolate!'
coffee = coffee.remove_decorator 'WithChocolate'

puts coffee.information

puts 'removing sugar!'
coffee = coffee.remove_decorator 'WithSugar'

puts coffee.information
