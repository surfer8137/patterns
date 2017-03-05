require_relative '../coffee_decorator'

class WithChocolate < CoffeeDecorator

  def initialize(coffe_component)
    super coffe_component
  end

  def information
    super << ' chocolate'
  end
end
