class Airplane
  attr_reader :number, :company

  def initialize(number, company)
    @number = number
    @company = company
    @current_guests = []
    @current_employees = []
  end

  def land_at_airport(airport)
    airport.plane_arrival(self)
  end

  def depart_from_airport(airport)
    airport.plane_departure(self)
  end

  def board_person(person)
    if person.class == "Employee"
      @current_employees << person
    else
      @current_guests << person
    end
  end

  def deboard_person(person)
    if person.class == "Employee"
      deboard_employee(person)
    else
      deboard_guest(person)
    end
  end

  def deboard_guest(guest)
    index_of_guest = @current_guests.index guest
    if index_of_guest
      @current_guests.delete_at index_of_guest
    else
      "Sorry, that person is not currenly on the plane"
    end
  end

  def deboard_employee(employee)
    index_of_employee = @current_employees.index employee
    if index_of_employee
      @current_employees.delete_at index_of_employee
    else
      "Sorry, that employee is not currenly on the plane"
    end
  end
end
