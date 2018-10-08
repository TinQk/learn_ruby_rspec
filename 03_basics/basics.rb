def who_is_bigger (a, b ,c)
  if a == nil || b == nil || c == nil
    return "nil detected"
  end
  if a>b
    bigger = a
    bigger_name = "a"
  else
    bigger = b
    bigger_name = "b"
  end
  if bigger<c
      bigger = c
      bigger_name = "c"
  end
  return "#{bigger_name} is bigger"
end



def reverse_upcase_noLTA(string)
  answer = string.reverse.upcase
  answer = answer.delete("TLA")
  return answer
end



def array_42(array)
  array.each do |elem|
    if elem.to_f == 42
      return true
    end
  end
  return false
end


# The magic_array function takes an array of number or an array of
# array of number as parameter and return the same array :
# - flattened (i.e. no more arrays in array)
# - sorted
# - with each number multiplicated by 2
# - with each multiple of 3 removed
# - with each number duplicate removed (any number should appear only once)
# - sorted
# BONUS : You can do this in one line less than 55 chars

def magic_array (array)
  new_array = array.flatten
  new_array = new_array.sort
  new_array = new_array.map{|elem| elem*2}
  new_array = new_array.delete_if{|elem| elem%3==0}
  new_array = new_array.uniq
end
