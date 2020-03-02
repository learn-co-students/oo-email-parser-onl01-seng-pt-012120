# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
  attr_accessor :email
  
  def initialize(emails)
    @email = emails
  end
  
  def parse
    emails_a = @email.split(/[, ]/).uniq
    emails_a.reject! { |e| e == ""} # { |e| e.empty?} works too
    emails_a
  end
  
end