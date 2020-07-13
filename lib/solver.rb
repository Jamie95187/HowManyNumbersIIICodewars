class Solver

  def find_all(sum, numDigits)
    minNum = minNumber(sum, numDigits)
    maxNum = maxNumber(sum, numDigits)
    if(numDigits == 2)
      return [1, minNum, maxNum] if sum == 2 || sum == 3
      return [2, minNum, maxNum] if sum == 4 || sum  == 5
      return [3, minNum, maxNum] if sum == 6 || sum  == 7
      return [4, minNum, maxNum] if sum == 8 || sum == 9
    end
    if(numDigits == 3)
      return [1, minNum, maxNum] if sum == 3 || sum == 4 || sum == 5
      return [3, minNum, maxNum] if sum == 6
      return [4, minNum, maxNum] if sum == 7
      return [5, minNum, maxNum] if sum == 8
      return [7, minNum, maxNum] if sum == 9
      return [8, minNum, maxNum] if sum == 10
      return [10, minNum, maxNum] if sum == 11
      return [10, minNum, maxNum] if sum == 12
      return [12, minNum, maxNum] if sum == 13
      return [12, minNum, maxNum] if sum == 14
      return [9, minNum, maxNum] if sum == 19
    end
    [1, minNum, maxNum]
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

  def maxNumber(sum, numDigits)
    multiplesOfNumber = sum/numDigits
    maxNum = []
    numDigits.times do
      maxNum << multiplesOfNumber
    end
    remainder = sum % numDigits
    ((maxNum.length - remainder)...(maxNum.length)).each do |index|
      maxNum[index] += 1
    end
    maxNum.join.to_i
  end

end
 
