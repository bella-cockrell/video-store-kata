require_relative "../lib/video_store"

describe VideoStore do
    context "when I pass in two arguments" do
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
            expect{video_store.print_receipt("", [])}.to output(receipt).to_stdout
        end
    end
end

