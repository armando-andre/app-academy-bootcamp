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

  def favorite_food?(str)
    switch = false

    if @favorite_foods.is_a? String
      switch = true if @favorite_foods.downcase === str.downcase
    else
      @favorite_foods.each do |ele|
        switch = true if ele.downcase === str.downcase
      end
    end

    switch
  end
end