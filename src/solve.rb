def solve(a,b)
arr1 = [[a]]
arr2 = []
while true do
  arr2 = []
  while arr1.length > 0 do

    temp = arr1.shift
    element = temp[-1]

    return temp + [b] if element * 2 == b || element + 2 == b

    insert = [element * 2, element + 2]

    insert << element / 2 if (element % 2 == 0 && element != 2)

    return temp + [b] if insert.include?(b)

    insert.uniq.each do |dig|
      result = temp.dup
      arr2 << result + [dig]
    end
  end

  arr1 = arr2.dup
end
end
