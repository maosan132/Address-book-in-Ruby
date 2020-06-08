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
    complete_name.nil? ? complete_name = ' ' : complete_name << middle_name
    complete_name << ' '
    complete_name << last_name
  end

end

mauricio = Contact.new
mauricio.first_name = 'Andrés'
mauricio.middle_name = 'Santos'
mauricio.last_name = 'hoyos'
puts mauricio.first_name
puts mauricio.middle_name

puts mauricio.complete_name
