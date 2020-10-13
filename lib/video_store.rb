class VideoStore
    def print_receipt(customer_name, movie_hash)
        puts "Rental Record for #{customer_name}"
        movie_hash_iterator(movie_hash)
        puts "You owe 0.0"
        puts "You earned 0 frequent renter points"
    end

    def movie_hash_iterator(movie_hash)
        if movie_hash == {}
            puts "\s\s"
        else
            movie_hash.each { |key, value| puts "\s\s#{key} #{value}"}
        end
    end
end
