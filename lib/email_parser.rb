# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
 
 class EmailAddressParser

   attr_accessor :emails

   def initialize(emails)
    @emails = emails
  end
def parse
    # split into an array using the regex of "possible comma followed by white space"
    # select from the array only those emails that are not blank spaces
    # select only those unique emails
    emails.split(/[,?\s]/).select{|email| email != ""}.uniq 
  end

 end
