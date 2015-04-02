class Email
  def initialize(subject,headers)
    @subject = subject
    @date = headers[:date]
    @from = headers[:from]
  end
  
  def subject
    @subject
  end
  
  def date
    @date
  end
  
  def from
    @from
  end
end

class Mailbox
  def initialize(name,emails)
    @name = name
    @emails = emails
  end
  
  def name
    @name
  end
  
  def emails
    @emails
  end
end

class MailboxTextFormatter
  
  def initializate(mailbox)
    @mailbox = mailbox
    
    def mailbox
      @mailbox
    end
  end
  
    
  def maxSizeSubject(mailbox)
    maxSizeSubject = 0
    mailbox.emails.each do |email|
    	if email.subject.size >= maxSizeSubject then maxSizeSubject = email.subject.size
    return maxSizeSubject
    end
  end
  
  def maxSizeDate(mailbox)
    maxSizeDate = 0
    mailbox.emails.each do |email|
    	if email.date.size >= maxSizeDate then maxSizeDate = email.date.size
    return maxSizeDate
    end
  end
  
  def maxSizeFrom(mailbox)
    maxSizeFrom = 0
    mailbox.emails.each do |email|
    	if email.from.size >= maxSizeFrom then maxSizeFrom = email.from.size
      return maxSizeFrom
  	end
  end
end

emails = [
  Email.new("Homework this week", { :date => "2014-12-01", :from => "Ferdous" }),
  Email.new("Keep on coding! :)", { :date => "2014-12-01", :from => "Dajana" }),
  Email.new("Re: Homework this week", { :date => "2014-12-02", :from => "Ariane" })
]
mailbox = Mailbox.new("Ruby Study Group", emails)
formatter = MailboxTextFormatter.new(mailbox)

puts formatter.format
