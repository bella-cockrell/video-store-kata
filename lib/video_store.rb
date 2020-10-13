class VideoStore
    def print_receipt(customer_name, movie_list)
        print <<~RECEIPT
        Rental Record for #{customer_name}
        
        You owe 0.0
        You earned 0 frequent renter points
        RECEIPT
    end
end