# class Cat_Maker
#   @@count = 0
#   attr_accessor :has_hat
#
#   def initialize (has_hat=:no)
#     @has_hat = has_hat
#     @@count = @@count+1
#   end
#
#   def self.count
#     @@count
#   end
# end

def make_cats
  cats = Hash.new(100)
  count = 1
  while count <= 100
    cats[count] = "Hat:No"
    count += 1
  end
  cats
end

def change_hats
  hat_counter = 1
  cat_index = 1
  while hat_counter <= 100
    if cat_index % hat_counter == 0
      if cats[cat_index] == "Hat:No"
        cats[cat_index] = "Hat:Yes"
      else
        cats[cat_index] = "Hat:No"
      end
    cat_index += 1
    cats
    end
  end
  cat_index = 1
  hat_counter += 1
end


all_cats = Hash.new(10)

cat = Cat_Maker.new
puts cat.has_hat


puts all_cats
