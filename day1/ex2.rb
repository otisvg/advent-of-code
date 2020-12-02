file = File.open('./input.txt', "r")
data = file.read
file.close
data_array =  data.split("\n").map(&:to_i)

combinator_array = data_array.combination(3).to_a 
matches = nil
combinator_array.each do |array|
  if array.sum == 2020
    matches = array
  end
end
p matches.inject(:*)
