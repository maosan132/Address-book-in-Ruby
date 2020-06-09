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

  def to_s(format = 'full')
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
print 'I am '
puts mauricio.to_s
puts mauricio.to_s('first')
puts mauricio.first_name + mauricio.middle_name + mauricio.last_name
puts mauricio.complete_name
puts mauricio.last_first
puts
jorge = Contact.new
jorge.first_name = 'Andrés'
jorge.middle_name = 'Santos'
jorge.last_name = 'hoyos'
print 'I am '
puts jorge.to_s
puts jorge.to_s('first')
puts jorge.first_name + jorge.middle_name + jorge.last_name
puts jorge.complete_name
puts jorge.last_first
