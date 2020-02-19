class EmailParser

  attr_accessor :emails

  def initialize(emails)
    @emails = emails
  end

  def parse
    email_array = []
    email_array = @emails.split(/[,\s]/)
    email_array = email_array.reject { |e| e == ""}
    email_array.uniq
  end

end

emails = "hpotter@hogwarts.org, he_who_must_not_be_named@riddleshouse.net"
parser = EmailParser.new(emails)

puts parser.parse