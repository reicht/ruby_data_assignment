testbed = "Tacos must not have lettuce Only meat and cheese and salsa"

### ORIGINAL ARTIFACT
#
# sentence_array.each do |x|
#   if x.length == 5
#     counter +=1
#   end
# end
# puts counter

class LengthFinder
  def initialize(sentence, testlength)
    @sentence = sentence
    @testlength = testlength
    @counter = 0
    @detected = []
    @sentence_array = sentence.split(" ")
  end
  def process
    @sentence_array.each do |x|
      if x.length == @testlength
        @detected << x
        @counter +=1
      end
    end
  end
  def output
    puts "Found " + @counter.to_s + " instances of items with length " + @testlength.to_s + "."
    puts "Detected items:"
    puts @detected
  end
end

fabuloso = LengthFinder.new(testbed, 5)
fabuloso.process
fabuloso.output
