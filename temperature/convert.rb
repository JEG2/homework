class Temperature
  def initialize(fahrenheit)
    @fahrenheit = fahrenheit
  end

  attr_reader :fahrenheit

  def to_celsius
    (fahrenheit - 32) * (5.0 / 9.0)
  end

  def to_farhenheit
    fahrenheit
  end
end

class Converter
  def initialize(temperature)
    @temperature = temperature
  end

  attr_reader :temperature

  def convert
    if temperature.downcase.end_with?("f")
      "#{Temperature.new(temperature.to_f).to_celsius}C"
    else
      "#{Temperature.new(temperature.to_f * (9.0 / 5.0) + 32).to_farhenheit}F"
    end
  end
end

puts Converter.new(ARGV.first).convert
