require 'pry'
require './phone_numbers'
require './address'
class Contact

  attr_writer :first_name, :middle_name, :last_name  
  attr_reader :phone_numbers, :addresses

  def initialize
    @phone_numbers = []
    @addresses = []
  end

  def add_phone_number (kind, number)
    phone_number = PhoneNumber.new
    phone_number.kind = kind
    phone_number.number = number
    phone_numbers.push(phone_number)

  end

  def add_address(kind, street_1, street_2, city, state, zip_code)
    address = Address.new
    address.kind = kind
    address.street_1 = street_1
    address.street_2 = street_2
    address.city = city
    address.state = state
    address.zip_code = zip_code
    addresses.push(address)
  end

  def print_numbers
    puts "phone numbers"
    phone_numbers.each {|i| puts i}
  end

  def print_addresses
    puts "Addresses"
    addresses.each {|i| puts i.to_s('short')}
  end

  def first_name
    @first_name
  end

  def middle_name
    @middle_name
  end

  def last_name
    @last_name
  end

  def complete_name
    complete_name = first_name
    complete_name << ' '
    middle_name.nil? ? complete_name << '' : complete_name << middle_name
    complete_name << ' ' << last_name
  end

  def first_last
    first_name + ' ' + last_name
  end

  def last_first
    last_first = last_name
    last_first << ', '
    last_first << first_name
    last_first << ' '
    middle_name.nil? ? last_first = '' : last_first << middle_name.slice(0, 1) <<'.'
    
  end

  def to_ss(format = 'full')
    case format
    when 'full'
      complete_name
    when 'last_first'
      last_first
    when 'first'
      first_name
    when 'last'
      last_name
    else
      first_last
    end
  end
end

mauricio = Contact.new
mauricio.first_name = 'Andrés'
mauricio.middle_name = 'Santos'
mauricio.last_name = 'hoyos'
mauricio.add_phone_number('Home', '44564-7878')
mauricio.add_phone_number('Work', '65-445715')
mauricio.add_address('home', 'main_street', ' ', 'Cali', 'VA', '760001')
print 'I am '
# puts mauricio.to_s
# puts mauricio.to_s('first')
puts mauricio.first_name + mauricio.middle_name + mauricio.last_name
puts mauricio.complete_name
puts mauricio.last_first
puts mauricio.last_name + 'd'
mauricio.print_numbers
mauricio.phone_numbers[0]
mauricio.print_addresses
