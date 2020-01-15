def solve(a,b)
  ways = [[a]]
  result = [a]
  sol = []
  while result[-1] != b do
    ways.each_with_index do |arr,ind|
      ways.each do |del|
        ways.delete_at(ways.index(del)) if del.length > ind + 1
      end
      pp "ways #{ways}"
      pp "arr #{arr}"
      result = arr.dup
      # if arr.include?(1)
      #   ways.delete_at(ways.index(arr))
      #   next
      # end
      insert = [arr[-1] * 2 , 2 + arr[-1]]
      insert << arr[-1] / 2 if arr[-1] % 2 == 0
      insert.uniq!
      insert.each do |val|
        # pp "result #{result}"
        result = arr.dup
        result << val
        ways << result
        pp "result #{result}"
      end
      pp "ways #{ways}"
      # pp "result #{result}"
      # ways.delete_at(ways.index(arr))
      ways.sort_by(&:length)
      break if result[-1] == b
    end
  end
  pp result
end
