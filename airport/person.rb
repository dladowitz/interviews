class Person
  attr_reader :name

  def initialize(name)
    @name = name
    @on_plane = false
  end

  def board_plane(airplane)
    @on_plane = airplane
    airplane.board_person(self)
  end
end

class Guest
  def initialize(name)
    @name = name
    @checked_in = false
    @on_plane = false
  end

  def check_in
    @checked_in = true
  end

  def drive_to_airport(airport)

  end
end

class Employee < Person
  attr_reader :employee_number, :home_city

  def initialize(name, employee_number, home_city)
    @name = name
    @employee_number = employee_number
    @passed_background_checks = false
    @home_city = home_city
    @role = nil
  end
end
