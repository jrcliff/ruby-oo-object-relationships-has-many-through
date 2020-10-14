class Meal
    @@all = []
    attr_accessor :waiter, :customer, :total, :tip
    def initialize(waiter, customer, total, tip)
        @waiter = waiter
        @customer = customer
        @total = total
        @tip = tip
        save
    end

    def self.all
        @@all
    end

    def save
        @@all << self
    end
end