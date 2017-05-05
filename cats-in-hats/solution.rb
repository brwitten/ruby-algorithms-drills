#this is a helper function to make the cats hash
def initialize_cats
    cats = Hash.new(100) #empty hash to hold results
    i = 1
    #make all cats with no hats
    while i <= 100
        cats[i] = "no hat"
        i += 1
    end
    cats
end

def cats_in_hats
    cats = initialize_cats
    100.times { |x|
        i = 1
        while i < cats.length
            if cats[i + x] == "no hat"
                cats[i + x] = "hat"
            elsif cats[i + x] == "hat"
                cats[i + x] = "no hat"
            end
            i += 1
        end
    }

    cats.select { |k,v| v == "hat" }
end


puts cats_in_hats
