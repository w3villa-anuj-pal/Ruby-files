# def single_flatten(array)
#   results = []
#   array.each do |element|
#     if element.class == Array
#       element.each {|value| results << value}
#     else
#       results << element
#     end
#   end
#     results
#   end
  
#   def multiple_flatten(array, n)
#     count = 0
#     arr = array
#     while count < n do
#       arr = single_flatten(arr)
#       count += 1
#     end
#     arr
#   end
  
#   array = [[1,2,3],[[4,5]],[[[6,7,8]]]]
#   print  multiple_flatten(array,3)
#   puts


# 2nd Way of flatten
# arr = [1,2,3,[4,5,6,7],[8,9]]
# $flat_array = []

# def get_flatten_array (array)  
#   array.each do |element|
#     if (element.kind_of?(Array))
#       get_flatten_array(element)  
#     else
#       $flat_array.push(element)
#     end
#   end
# end

# get_flatten_array(arr)
# print("#{$flat_array}")

a = [[1,2,3],[[4,5,6,7]],[8,9,10,[11,12]]]
def myflatten(a,b=[])
  a.each do |ele|
    if ele.class == Array
      myflatten(ele,b)
    else
      b.push(ele)
    end
  end
  return b
end

 p myflatten(a)