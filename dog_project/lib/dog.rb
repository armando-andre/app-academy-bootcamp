class Dog
  def initialize(name, breed, age, bark, favorite_foods)
    @name = name
    @breed = breed
    @age = age
    @bark = bark
    @favorite_foods = favorite_foods
  end

  def name
    @name
  end

  def breed
    @breed
  end

  def age
    @age
  end

  def age=(num)
    @age = num
  end

  def bark
    if @age <= 3
      @bark.downcase
    else
      @bark.upcase
    end
  end

  def favorite_foods
    @favorite_foods
  end

  def favorite_foods=(var)
    @favorite_foods = var
  end

  def self.favorite_food?(str)
    p str
  end
end

cat_1 = Dog.new("Mellow", "French Bulldog", 1, "woof woof", "fish")
Dog.favorite_food?("meat")