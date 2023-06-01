class Person
  attr_reader :id, :name, :age

  def initialize(name = 'Unknown', age = nil, parent_permission: true)
    @id = rand(1...100)
    @name = name
    @age = age || 0
    @parent_permission = parent_permission
  end

  def of_age?
    @age >= 18
  end

  def can_use_services?
    of_age? || parent_permission
  end
end
