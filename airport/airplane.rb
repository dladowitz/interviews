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
end
