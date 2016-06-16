require_relative 'airplane.rb'
require_relative 'person.rb'

class Airport
  attr_reader :name, :city, :current_planes

  def initialize(name, city)
    @name = name
    @city = city
    @current_planes = []
    @admin_password = "GoFlyAPlane"
  end

  def plane_arrival(plane)
    @current_planes << plane
  end

  def plane_departure(plane)
    index_of_plane = @current_planes.index plane
    if index_of_plane
      @current_planes.delete_at index_of_plane
    else
      "Sorry, that plane is not currenly at the airport"
    end
  end

  def change_property(property, value, password)
    if password == @admin_password
      case property
      when "name"
        @name = value
      when "city"
        @city = value
      when "admin_password"
        @admin_password = value
      else
        puts "Sorry, I don't know that property"
      end
    else
      "Sorry, that is the wrong password"
    end
  end
end
