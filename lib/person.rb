# your code goes here
require 'pry'
class Person 
    attr_reader :name
    attr_accessor :bank_account
    attr_reader :happiness
    attr_reader :hygiene

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(value)
        if value > 10
            @happiness = 10
        elsif value < 0
            @happiness = 0
        else
            @happiness = value
        end
    end

    def hygiene=(value)
        if (value > 10)
            @hygiene = 10
        elsif value < 0
            @hygiene = 0
        else
            @hygiene = value
        end
    end

    def clean? 
        @hygiene > 7
    end

    def happy?
        @happiness > 7
    end

    def get_paid(amount)
        @bank_account += amount
        "all about the benjamins"
    end

    def take_bath
        self.hygiene=(@hygiene + 4)
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness=(@happiness + 2)
        self.hygiene=(@hygiene - 3)
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        friend.happiness=(friend.happiness + 3)
        self.happiness=(@happiness + 3)
        "Hi #{friend.name}! It's #{@name}. How are you?"
    end

    def start_conversation(friend, topic)
        if (topic == "politics")
            friend.happiness=(friend.happiness - 2)
            self.happiness=(@happiness - 2)
            "blah blah partisan blah lobbyist"
        elsif (topic == "weather")
            friend.happiness=(friend.happiness + 1)
            self.happiness=(@happiness + 1)
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end

end

sarah = Person.new("Sarah")
sarah.clean?
sarah.take_bath
sarah.hygiene=(-3)
gene = Person.new("Gene")