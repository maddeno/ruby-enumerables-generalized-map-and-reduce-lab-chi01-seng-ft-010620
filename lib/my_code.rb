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
  while i < source_array.length do
    current_element = source_array[i]
    value = yield(current_element, starting_point)
    i += 1 
  end
  value
end

