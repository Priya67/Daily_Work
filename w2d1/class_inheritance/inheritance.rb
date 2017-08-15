

class Employee
  attr_accessor :name, :title, :salary, :boss

  def initialize(name, title, salary, boss)
    @name = name
    @title = title
    @salary = salary
    @boss = boss
  end

  def bonus(multiplier)
    bonus = (@salary) * multiplier
  end

end

class Manager < Employee

  def initialize(name, title, salary, boss)
    super(name, title, salary, boss)
    @employees = [ ]

  end

  


  def bonus(multiplier)
    sum = 0
    @employees.each {|e| sum+=e.salary}
    bonus = sum * multiplier
    bonus
  end
end
