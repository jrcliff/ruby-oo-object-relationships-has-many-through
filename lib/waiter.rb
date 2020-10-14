class Waiter
    @@all = []
    attr_accessor :name, :exp
    def initialize(name, exp)
        @name = name
        @exp = exp
        save
    end

    def self.all
        @@all
    end

    def save
        @@all << self
    end

    def new_meal(customer, total, tip=0)
        Meal.new(self, customer, total, tip)
    end

    def meals
        Meal.all.select {|meal| meal.waiter == self}
    end

    def best_tipper
        best_tipped_meal = meals.max do |meal_a, meal_b|
            meal_a.tip <=> meal_b.tip
        end
        best_tipped_meal.customer
    end

end