class Solver

  def find_all(sum, numDigits)
    if(numDigits == 2)
      return [1, "1#{sum-numDigits+1}".to_i, "1#{sum-1}".to_i] if sum == 2 || sum == 3
      return [2, "1#{sum-numDigits+1}".to_i, "2#{sum-2}".to_i] if sum == 4 || sum  == 5
      return [3, "1#{sum-numDigits+1}".to_i, "3#{sum-3}".to_i] if sum == 6 || sum  == 7
      return [4, "1#{sum-numDigits+1}".to_i, "4#{sum-4}".to_i] if sum == 8 || sum == 9
    end
    return [1, "11#{sum-numDigits+1}".to_i, "11#{sum-2}".to_i] if sum == 3 || sum == 4 || sum == 5
    return [3, "11#{sum-numDigits+1}".to_i, 222] if sum == 6
    return [4, "11#{sum-numDigits+1}".to_i, 223] if sum == 7
    return [5, "11#{sum-numDigits+1}".to_i, 233] if sum == 8
    return [7, "11#{sum-numDigits+1}".to_i, 333] if sum == 9
    return [8, "11#{sum-numDigits+1}".to_i, 334] if sum == 10
    [10, 119, 344]
  end

end
 
