sentence_array = "Tacos must not have lettuce Only meat and cheese and salsa".split(" ")
counter = 0
sentence_array.each do |x|
  if x.length == 5
    counter +=1
  end
end
puts counter
