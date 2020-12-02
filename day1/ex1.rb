  file = File.open('./input.txt', "r")
  data = file.read
  file.close
  data_array =  data.split("\n").map(&:to_i)


  matches = []
  data_array.each do |num|
    if data_array.include?(2020 - num)
      matches << num
    end
  end
  p matches.inject(:*)
