# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: O(n+n^2)--n for the splitting pass, and n^2 for the nested loops
# Space complexity: O(n)--for the new array. I assume the constants from the new variables for the indeces and `count` and `temp` fall away.
def sort_by_length(my_sentence)
  if my_sentence == ""
    return []
  end
  # selection sort
  array = my_sentence.split(" ")
  count = array.length
  outer_loop_index = 0

  while outer_loop_index < count - 1
    inner_loop_index = outer_loop_index + 1
    min_index = outer_loop_index
    while inner_loop_index < count
      if array[min_index].length > array[inner_loop_index].length
        min_index = inner_loop_index
      end
      inner_loop_index += 1
    end
    # If there's a value smaller than existing, swap
    if array[outer_loop_index] != array[min_index]
      array[outer_loop_index], array[min_index] = array[min_index], array[outer_loop_index]
    end
    outer_loop_index += 1
  end
  return array
end
