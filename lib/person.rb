class Person
  attr_reader :name, :email, :phone, :extracts

  def initialize(name, email, phone)
    @name     = name
    @email    = email
    @phone    = phone
    @extracts = []
  end
end