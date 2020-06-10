require './contact'

class Book
  attr_reader :contacts

  def initialize
    @contacts = []
  end

  def print_contacts
    puts 'contact list'
    contacts.each do |contact|
      puts contact.to_s('last_first')
    end
  end
end

address_book = Book.new
mauricio = Contact.new
mauricio.first_name = 'Andrés'
mauricio.middle_name = 'Santos'
mauricio.last_name = 'hoyos'
mauricio.add_phone_number('Home', '44564-7878')
mauricio.add_phone_number('Work', '65-445715')
mauricio.add_address('home', 'main_street', ' ', 'Cali', 'VA', '760001')
puts 'qaqaqa'
address_book.contacts.push(mauricio)
address_book.print_contacts
puts 'dasdas'