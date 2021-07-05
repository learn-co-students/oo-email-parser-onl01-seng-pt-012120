# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email emails. The delimiters to support are commas (',')
# or whitespace (' ').
require "pry"

class EmailAddressParser
    EmailParser = []
    @@all = []
    attr_accessor :emails

    def initialize(emails)
        @emails = emails
    end

    def self.all
        @@all
    end

    def save
        self.class.all << self
      end

    def parse
        @emails.split(/,?\s/).uniq
    end





end