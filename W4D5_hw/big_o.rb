

def quad(arr)
  max = 0
  (0...arr.length).each do |idx_1|
    (1...arr.length).each do |idx_2|
      max = arr[idx_1] if arr[idx_1] > arr[idx_2]
    end 
  end 
  max 
end

def log(arr)
  mid = arr.length / 2
  left = arr[0...mid]
  right = arr[mid..-1]

  return arr if arr.length <= 1
  merge(log(left), log(right))
end 

def merge(arr_1, arr_2)
  merged = []

  while arr_1.length > 0 && arr_2.length > 0
    if arr_1[0].length >= arr_2[0].length
      merged << arr_2.shift
    else
      merged << arr_1.shift
    end 
  end 
    merged + arr_1 + arr_2
  
end 


# def log_last()
  
# end 





def linear(arr)
  max = arr[0]

  arr.each do |fish|
    if fish.length > max.length
      max = fish
    end 
  end 
  max
end 

p linear(['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']) # "fiiiissshhhhhh"


tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]

def slow_dance(dir, tiles_array)

  tiles_array.each_with_index do |direction, i|
    return i if direction == dir
  end 

end 






# tiles_hash = {
#     "up" => 0,
#     "right-up" => 1,
#     "right"=> 2,
#     "right-down" => 3,
#     "down" => 4,
#     "left-down" => 5,
#     "left" => 6,
#     "left-up" => 7
# }



