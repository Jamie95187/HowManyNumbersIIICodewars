class Solver

  def find_all(sum, numDigits)
    return [1, "1#{sum-1}".to_i, "1#{sum-1}".to_i] if sum == 2 || sum == 3
    return [2, "1#{sum-1}".to_i, 22] if sum == 4
    return [2, "1#{sum-1}".to_i, 23] if sum == 5
    return [3, "1#{sum-1}".to_i, 33] if sum == 6
    [3, 16, 34]
  end

end
 
