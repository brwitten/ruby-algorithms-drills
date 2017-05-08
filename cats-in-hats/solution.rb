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

# # alternate way
def cats_in_hats
    cats = initialize_cats
    counter = 1
    while counter <= 100 do
            i = counter
            while(i <= 100)
            if cats[i] == "no hat"
                cats[i] = "hat"
            elsif cats[i] == "hat"
                cats[i] = "no hat"
            end
            i += counter
        end
        counter += 1
    end

    cats.select { |k,v| v == "hat" }
end

#clever alternative
# def cats_in_hats
#     counter = 1;
#     with_hats = [];
#     while counter <= 100
#         if Math.sqrt(counter) % 1 == 0
#             with_hats.push(counter)
#         end
#         counter += 1
#     end
#     return with_hats
# end

puts cats_in_hats
