class Person
    attr_accessor :bank_account, :happiness, :hygiene
    attr_reader :name 

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8

    end

    def happiness
        if @happiness > 10
            10
        elsif @happiness < 0
            0
        else
            @happiness
        end
    end

    def hygiene
        if @hygiene > 10
            10
        elsif @hygiene < 0
            0
        else
            @hygiene
        end
    end

    def happy?
        if @happiness > 7
            true
        else
            false
        end
    end

    def clean?
        if @hygiene > 7
            true
        else
            false
        end
    end

    def get_paid(salary)
       self.bank_account = @bank_account + salary
       "all about the benjamins"
    end

    def take_bath
        self.hygiene = @hygiene + 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene = @hygiene - 3
        self.happiness = @happiness + 2
        "♪ another one bites the dust ♫"
    end

    def call_friend(person)
        person.happiness = person.happiness + 3
        self.happiness = @happiness + 3
        "Hi #{person.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(name, topic)
        if topic == "politics"
            name.happiness = name.happiness - 2
            self.happiness = @happiness - 2
        "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            name.happiness = name.happiness + 1
            self.happiness = @happiness + 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end

end