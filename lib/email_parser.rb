# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser

    attr_accessor :emails                                       #setter and getter for emails

    def  initialize(emails)                                     #every time an email is made it gets turned to an instance variable 
        @email = emails
      end
    
      def parse
        email_array = @email.split(/[, ]/).uniq                 #splits emails at the comma or a space, doesnt do duplicates
        email_array.reject! {|element| element.empty?}          #rejects is the elemetns is empty 
        email_array
      end
    
    end