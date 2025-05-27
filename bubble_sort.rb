array = [6,3,4,9,1,12,3,2,3,1,23,4,5,6,7]

def bubble_sort(arr)
  n = 1

  begin 
    sorted = true
    (0...arr.length - n).each do |i|

      first_number = arr[i]
      second_number = arr[i+1]

      if first_number > second_number
        arr[i] = second_number
        arr[i+1] = first_number
        sorted = false
      end
    end
    n += 1
  end while sorted == false

arr

end

p bubble_sort(array)