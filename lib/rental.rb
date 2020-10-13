class Rental
    attr_accessor :length_of_rental

    def initialize(length_of_rental)
        @length_of_rental = length_of_rental
    end

    def get_total
        @length_of_rental = @length_of_rental * 2
        #dummy method
    end
end

class RegularRental < Rental

    def initialize(length_of_rental)
        super
    end

    def get_total
        if @length_of_rental <= 2 
            return 2 * @length_of_rental
        else
            return 4 + (@length_of_rental - 2) * 1.5
        end
    end

end