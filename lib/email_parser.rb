# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser
  attr_accessor :email
  
  
  def initialize(email)
    @email = email
    @@list = []
    a = email.split(" ")
    a.each do |x|
      b = x.chars
      b.delete(",")
      c = b.join
      @@list << c
    end
  end
  
  def parse
    z = @@list.uniq
    z
  end
end