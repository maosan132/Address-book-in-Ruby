require 'pry'
class Contact

   

  attr_writer :first_name, :middle_name, :last_name

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
    complete_name = 'first_name'
    complete_name << ' '
    middle_name.nil? ? complete_name << '' : complete_name << middle_name
    complete_name << ' ' << last_name

  end

  def last_first
    last_first = last_name
    last_first << ', '
    last_first << first_name
    last_first << ' '
    middle_name.nil? ? last_first = '' : last_first << middle_name.slice(0, 1) <<'.'
    
  end
end

mauricio = Contact.new
mauricio.first_name = 'Andrés'
puts mauricio.first_name + ' 1'
mauricio.middle_name = 'Santos'
mauricio.last_name = 'hoyos'
print 'I am '
puts mauricio.first_name + mauricio.middle_name + mauricio.last_name
puts mauricio.first_name + ' 2 '
puts mauricio.complete_name
puts mauricio.first_name + ' 3 '
puts mauricio.last_first
