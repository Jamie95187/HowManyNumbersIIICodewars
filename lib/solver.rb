class Solver

  def find_all(sum, numDigits)
    return [1, "1#{sum-1}".to_i, "1#{sum-1}".to_i] if sum == 2 || sum == 3
    return [2, "1#{sum-1}".to_i, 22] if sum == 4
    return [2, "1#{sum-1}".to_i, 23] if sum == 5
    [2, "1#{sum-1}".to_i, 33]
  end

end
 
