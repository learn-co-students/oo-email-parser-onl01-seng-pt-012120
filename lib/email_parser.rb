require "pry"

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
    # splits emails by "," + " "
    split_emails = @emails.split(Regexp.union([","," "]))
    
    # deletes blanks
    split_emails.delete_if {|i| i == ""}
    
    # removes duplicates
    final_arr = []
    split_emails.each do |i|
      if !final_arr.include?(i)
        final_arr << i
      end
    end
    final_arr
    
  end

end