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
  check_array = [array[2][array[0].split("-")[0].to_i - 1] , array[2][array[0].split("-")[1].to_i - 1] ]
  if check_array[0] != check_array[1] 
    if check_array[0] == array[1].chomp(":") || check_array[1] == array[1].chomp(":")
      counter += 1
    end
  end
end

p counter