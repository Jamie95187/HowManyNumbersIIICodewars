class Solver

  def find_all(sum, numDigits)
    return [] if numDigits * 9 < sum
    minNum = minNumber(sum, numDigits)
    maxNum = maxNumber(sum, numDigits)
    perm = permutations(sum, minNum, maxNum)
    [perm, minNum, maxNum]
  end

  def minNumber(sum, numDigits)
    return Array.new(numDigits, 9).join.to_i if numDigits * 9 == sum
    multiplesOfNine = sum/9
    numberOfNines = (sum - (numDigits - multiplesOfNine))/9
    minNum = []
    numberOfNines.times {
      minNum << 9
    }
    remainingNumbers = numDigits - minNum.length
    remainder = sum % 9
    if remainingNumbers > 1
      minNum.unshift ((remainder - (remainingNumbers - 1)) % 9)
      (remainingNumbers-1).times do
        minNum.unshift 1
      end
    elsif remainingNumbers == 1
      minNum.unshift remainder
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

  def permutations(sum, min, max)
    counter = 0
    (min..max).each do |num|
      if num.to_s.split("").inject(0){ |sum, x| sum + x.to_i } == sum
        if num.to_s.split("").map { |dig| dig.to_i }.sort.join.to_i == num
          counter += 1
        end
      end
    end
    return counter
  end

end
 
