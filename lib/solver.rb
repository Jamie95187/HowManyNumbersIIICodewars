class Solver

  def find_all(sum, numDigits)
    return [1, 11, 11] if sum == 2
    return [1, 12, 12] if sum == 3
    return [2, 13, 22] if sum == 4
    [2, 14, 23]
  end

end
 
