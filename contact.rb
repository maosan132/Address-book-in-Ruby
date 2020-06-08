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
end

mauricio = Contact.new
mauricio.first_name = 'Andrés'
mauricio.middle_name = 'Santos'
puts mauricio.first_name
puts mauricio.middle_name