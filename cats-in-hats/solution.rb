def cats_in_hats()
    cats = Hash.new(100)
    100.times { |i| cats[i] = "none"  }



    100.times { |x|
        i = 0
        while i < cats.length
            if cats[i + x] == "none"
                cats[i + x] = "hat"
            elsif cats[i + x] == "hat"
                cats[i + x] = "none"
            end
            i += 1
        end
    }

    cats.select { |k,v| v == "hat" }
end

cats_in_hats()
