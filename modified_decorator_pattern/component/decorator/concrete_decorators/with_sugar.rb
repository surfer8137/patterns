require_relative '../coffee_decorator'

class WithSugar < CoffeeDecorator

  def initialize(coffe_component)
    super coffe_component
  end

  def information
    super << ' sugar'
  end
end
