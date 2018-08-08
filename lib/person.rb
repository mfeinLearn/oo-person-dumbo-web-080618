require 'pry'
# your code goes here
    class Person
      attr_accessor :happiness, :account, :hygiene
      attr_reader :name 

      def initialize(name ) 
        @name = name
        @happiness = 8
        @account = 25
        @hygiene = 8
      end
    

      def bank_account=(money) 
        @account = money
      end
      
      def bank_account
        @account
      end
      
      
      def happiness=(happy)
        if (happy >= 10)
          @happiness = 10
        elsif happy <= 0
          @happiness = 0 
        else 
          @happiness = happy
        end 
      end 
      
      def hygiene=(hygiene_index)
        if (hygiene_index >= 10)
          @hygiene =10
        elsif hygiene_index <= 0
          @hygiene = 0
        else
          @hygiene = hygiene_index
      end 
    end
    
    def happy?
      if @happiness > 7
        return true 
      else false
      end
    end 
    
    def clean?
      @hygiene > 7 ? true : false 
    end
    
    def get_paid(salary)
      @account += salary
      return "all about the benjamins"
    end
    
    def take_bath
      self.hygiene= @hygiene  + 4
      return "♪ Rub-a-dub just relaxing in the tub ♫"
    end 
    
    def work_out
      self.hygiene= @hygiene  - 3
      self.happiness= @happiness  + 2
      return "♪ another one bites the dust ♫"
    end
    
    def call_friend(friend)
      self.happiness= @happiness  + 3
      friend.happiness+=3
      return "Hi #{friend.name}! It's #{@name}. How are you?"
    end
    
    def start_conversation( person, topic )
      if (topic == "politics")
        self.happiness= @happiness  - 2
        person.happiness -= 2
        #binding.pry
         return 'blah blah partisan blah lobbyist'
      elsif (topic == "weather")
        self.happiness= @happiness  + 1
        person.happiness += 1
        #binding.pry
         return 'blah blah sun blah rain'
       else 
         return "blah blah blah blah blah"
      end
      
    end 
  end
    malcome = Person.new("malcome")
    
    
    