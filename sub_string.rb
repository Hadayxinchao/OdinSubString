dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
def substrings(string, dictionary)
  dictionary.reduce(Hash.new(0)) do |result, substring|
    if string.downcase.include?(substring)
      result[substring] = string.downcase.scan(/(?=#{substring})/).count
    end
    result
  end
end
puts "Enter some string: "
inputString = gets.chomp
hashListing = substrings(inputString, dictionary)
puts hashListing