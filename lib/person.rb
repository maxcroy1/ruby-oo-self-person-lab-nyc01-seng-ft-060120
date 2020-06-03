# your code goes here
require 'pry'

class Person

    attr_accessor :bank_account
    attr_reader :name, :happiness, :hygiene

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(score)
        @happiness = score_max_min(score)
    end 

    def hygiene=(score)
        @hygiene = score_max_min(score)
    end

    def happy?
        score_check(@happiness)
    end

    def clean?
        score_check(@hygiene)
    end

    def get_paid(salary_amount)
        @bank_account += salary_amount
        p "all about the benjamins"
    end

    def take_bath
        self.hygiene = (@hygiene += 4)
        p "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness = (@happiness += 2)
        self.hygiene = (@hygiene -= 3)
        p "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness = (@happiness += 3)
        friend.happiness = (friend.happiness + 3)
        p "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        if topic == "politics"
            self.happiness = (@happiness -= 2)
            friend.happiness = (friend.happiness - 2)
            p "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness = (@happiness += 1)
            friend.happiness = (friend.happiness + 1)
            p "blah blah sun blah rain"
        else
            p "blah blah blah blah blah"
        end

    end

    private
    def score_max_min(new_score)
        if new_score > 10
            10
        elsif new_score < 0
            0
        else
            new_score
        end
    end

    def score_check(current_score)
        if current_score > 7
            true
        else
            false
        end
    end

end