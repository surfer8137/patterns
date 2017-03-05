class CoffeeDecorator
   attr_accessor :component

  def initialize coffe_component
    @component = coffe_component
  end

  def information
    @component.information
  end

  def remove_decorator name
    if @component.class.name == name
      @component = @component.component
    elsif self.class.name == name
      return @component
    end
  end
end
