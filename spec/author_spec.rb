require_relative '../classes/author'

describe Author do
   context 'Testing the author class'
   first_name = 'Ahmed' 
   last_name  = 'Musah'
   author = Author.new(first_name, last_name)

    it "should validate the first name of the author" do 
        expect(author.first_name).to eq 'Ahmed'
    end

    it "should validate the second name of the author" do 
        expect(author.last_name).to eq 'Musah'
    end
    
end