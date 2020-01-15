def solve(a,b)
  ways = [[a]]
  result = [a]
  while result[-1] != b do
    ways.each_with_index do |arr,ind|
      ways.each do |del|
        ways.delete_at(ways.index(del)) if del.length > ind + 1
      end
      result = arr.dup
      insert = [arr[-1] * 2 , 2 + arr[-1]]
      insert << arr[-1] / 2 if arr[-1] % 2 == 0
      insert.uniq!
      insert.each do |val|
        result = arr.dup
        result << val
        ways << result
      end
      ways.sort_by(&:length)
      break if result[-1] == b
    end
  end
  result
end
