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
    100.times { |num|
        i = 1
        while i < cats.length
            if cats[i + num] == "no hat"
                cats[i + num] = "hat"
            elsif cats[i + num] == "hat"
                cats[i + num] = "no hat"
            end
            i += 1
        end
    }
    cats.select { |k,v| v == "hat" }
end

# alternate way
# def cats_in_hats
#     cats = initialize_cats
#     counter = 0
#     while counter < 100 do
#         i = 1
#         while i < cats.length
#             if cats[i + counter] == "no hat"
#                 cats[i + counter] = "hat"
#             elsif cats[i + counter] == "hat"
#                 cats[i + counter] = "no hat"
#             end
#             i += 1
#         end
#         counter += 1
#     end
# 
#     cats.select { |k,v| v == "hat" }
# end

puts cats_in_hats