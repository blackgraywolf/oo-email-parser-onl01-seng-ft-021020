# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser
   def initialize(email)
     @email = email
  end
  attr_accessor :email
  def parse
    email_array = []

    email_array = @email.split(/[,\s]/)
    email_array = email_array.reject { |e| e == ""}
#array = array.uniq
    email_array.uniq
  end
end
email_addresses = "john@doe.com, person@somewhere.org"
parser = EmailAddressParser.new(email_addresses)
 
parser.parse