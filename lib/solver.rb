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
    return [3, "11#{sum-numDigits+1}".to_i, 222] if sum == 6
    return [4, "11#{sum-numDigits+1}".to_i, 223] if sum == 7
    return [5, "11#{sum-numDigits+1}".to_i, 233] if sum == 8
    return [7, "11#{sum-numDigits+1}".to_i, 333] if sum == 9
    return [8, "11#{sum-numDigits+1}".to_i, 334] if sum == 10
    return [10, minNum, 344] if sum == 11
    [10, 129, 345]
  end

  def minNumber(sum, numDigits)
    multiplesOfNine = (sum - numDigits + 1)/9
    minNum = []
    multiplesOfNine.times {
      minNum << 9
    }
    remainingNumbers = numDigits - minNum.length
    remainder = ((sum - numDigits) + 1) % 9
    remainder += 1 if remainder == 0
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
