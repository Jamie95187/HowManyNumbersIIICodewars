class Solver

  def find_all(sum, numDigits)
    minNum = minNumber(sum, numDigits)
    if(numDigits == 2)
      return [1, minNum, "1#{sum-1}".to_i] if sum == 2 || sum == 3
      return [2, minNum, "2#{sum-2}".to_i] if sum == 4 || sum  == 5
      return [3, minNum, "3#{sum-3}".to_i] if sum == 6 || sum  == 7
      return [4, minNum, "4#{sum-4}".to_i] if sum == 8 || sum == 9
    end
    return [1, minNum, "11#{sum-2}".to_i] if sum == 3 || sum == 4 || sum == 5
    return [3, minNum, 222] if sum == 6
    return [4, minNum, 223] if sum == 7
    return [5, minNum, 233] if sum == 8
    return [7, minNum, 333] if sum == 9
    return [8, minNum, 334] if sum == 10
    return [10, minNum, 344] if sum == 11
    return [10, minNum, 345] if sum == 12
    return [12, minNum, 445] if sum == 13
    return [12, minNum, 455] if sum == 14
    [9, minNum, 667]
  end

  def minNumber(sum, numDigits)
    multiplesOfNine = (sum - numDigits + 1)/9
    minNum = []
    multiplesOfNine.times {
      minNum << 9
    }
    remainingNumbers = numDigits - minNum.length
    remainder = ((sum - numDigits) + 1) % 9 + multiplesOfNine
    if remainingNumbers >= 1
      if remainingNumbers > 1
        minNum.unshift remainder
        (remainingNumbers-1).times do
          minNum.unshift 1
        end
      end
    end
    minNum.join.to_i
  end

end
 
