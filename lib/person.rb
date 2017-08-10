# your code goes here
require 'pry'
class Person
  attr_reader :name, :happiness, :hygiene
  attr_accessor :bank_account

  def initialize (name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end
 #only do a happinesss reader BC WE NEED A CUSTOM SETTER METHOD!!!!!
 #NOT JUST @HAPPINESS= HAPPINESS!!!!!!!
def happiness=(happiness)
  @happiness = happiness
  if self.happiness > 10
    self.happiness = 10
  elsif self.happiness < 0
    self.happiness = 0
  end
end

def hygiene=(hygiene)
  @hygiene = hygiene
  if self.hygiene > 10
    self.hygiene = 10
  elsif self.hygiene < 0
    self.hygiene =0
  end

  def happy?
    if self.happiness > 7
      return true
    else
      return false
    end
  end
end

def clean?
  if self.hygiene > 7
    return true
  else
    return false
  end
end

def get_paid(salary)
    @bank_account += salary
    return "all about the benjamins"
end

  def take_bath
    self.hygiene += 4
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end
    def work_out
      self.hygiene -= 3
      self.happiness +=2
      return "♪ another one bites the dust ♫"
    end
    def call_friend(person)
      self.happiness +=3
      person.happiness +=3
      return "Hi #{person.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person,topic)
      if topic == "politics"
        self.happiness -= 2
        person.happiness -=2
        return "blah blah partisan blah lobbyist"
      elsif topic == "weather"
        self.happiness +=1
        person.happiness +=1
        return "blah blah sun blah rain"
      else
        return "blah blah blah blah blah"
    end
  end
end
