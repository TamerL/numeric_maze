def solve(a,b)

  ways = [[a]]

  while true do
    final = []
    i = 0

    while i < ways.length do
      element = ways[i][-1]

      x  = element * 2
      return ways[i] << x if x == b

      y = 2 + element
      return ways[i] << y if y == b

      insert = [x,y]

      if element % 2 == 0 && element != 2
        z =  element / 2
        return ways[i] << z if z == b
        insert << z
      end

      insert.uniq.each { |val| temp = ways[i].dup; temp << val ; final << temp}

      i+=1
    end

    ways = final.dup
  end
end
