class Address
  attr_accessor :kind, :street_1, :street_2, :city, :state, :zip_code

  def to_s(format = 'short')
    address = ''
    case format
    when 'long'
      address << street_1 + "\n"
      address << street_2 + "\n" if !street_2.nil?
      address << "#{city}, #{state}, #{zip_code}"

    when 'short'
      address += "#{kind}: "
      address += street_1
      if street_2
        address << ' ' + street_2
      end
      address << "#{city}, #{state}, #{zip_code}"
    end
    address
  end

end

# home = Address.new
# home.kind = "home"
# home.city = "Cali"
# home.street_1 = 'Carrera 42'
# home.street_2 = '18 A 48'
# home.state = 'Valle'
# home.zip_code = "760001"

# puts home.to_s
# puts home.to_s('long')
