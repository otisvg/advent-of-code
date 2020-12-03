  file = File.open('./input.txt', "r")
  data = file.read
  file.close
  data_array = data.split("\n")

  transformed_array = []
  counter = 0

  data_array.each do |string|
     transformed_array << string.split(" ")
  end

  transformed_array.each do |array|
   num_range = eval(array[0].gsub('-', '..'))
   if (num_range).member?(array[2].count(array[1].chomp(':')))
    counter += 1
   end
  end

  p counter

