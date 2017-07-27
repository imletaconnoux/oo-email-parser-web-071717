# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

require 'pry'

class EmailParser

  attr_accessor :emails

  def initialize(emails)
    @emails = emails
  end

  def parse
    # if self.emails.include?(",")
    #   self.emails.split(", ")
    # else
    #   self.emails.split(" ")
    # end
    parsed = self.emails.split(/[, ]/)
    parsed.delete("")
    parsed.uniq!
    parsed


  end


end
