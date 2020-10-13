require_relative "../lib/video_store"

describe VideoStore do
    context "when I pass in two empty arguments" do
        it "prints the receipt" do
            #Arrange
            video_store = VideoStore.new
            #Act
            receipt = <<~RECEIPT
                Rental Record for 
                  
                You owe 0.0
                You earned 0 frequent renter points
                RECEIPT
            #Assert
            expect{video_store.print_receipt("", {})}.to output(receipt).to_stdout
        end
    end
    context "when I pass in the customer name" do
        it "prints the receipt with the customer name" do
            #Arrange
            video_store = VideoStore.new
            #Act
            receipt = <<~RECEIPT
                Rental Record for Bella
                  
                You owe 0.0
                You earned 0 frequent renter points
                RECEIPT
            #Assert
            expect{video_store.print_receipt("Bella", {})}.to output(receipt).to_stdout
        end
    end
    context "when I pass in one movie" do
        it "prints the receipt with the movie" do
            #Arrange
            video_store = VideoStore.new
            #Act
            receipt = <<~RECEIPT
                Rental Record for Bella
                  Bob the Builder 0.0
                You owe 0.0
                You earned 0 frequent renter points
                RECEIPT
            #Assert
            expect{video_store.print_receipt("Bella", {"Bob the Builder" => 0.0})}.to output(receipt).to_stdout
        end
    end
end

