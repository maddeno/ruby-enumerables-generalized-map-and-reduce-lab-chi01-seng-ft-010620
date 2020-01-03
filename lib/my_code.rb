def map(source_array)
  new_array = []
  i = 0 
  while i < source_array.length do
    current_element = source_array[i]
    new_array.push(yield(current_element))
    i += 1 
  end
  new_array
end

def reduce(source_array, starting_point = nil)
  i = 0 
  #if starting_point == nil
   # starting_point= source_array[0] 
  #end
  value = starting_point
  while i < source_array.length do
    current_element = source_array[i]
    value = yield(value, current_element)
    i += 1 
  end
  value
end

