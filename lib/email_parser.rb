class EmailAddressParser
attr_accessor :emails

def initialize(email)
  @emails = email
end

def parse 
    emails.split.collect do |address|
      address.split(',') 
    end
    .flatten.uniq 
  end 
end 

#def parse
  #emails.split.delete(',').split.uniq
#end
#end 
