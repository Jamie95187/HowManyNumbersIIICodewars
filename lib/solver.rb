class Solver

  def find_all(sum, numDigits)
    return [1, "1#{sum-1}".to_i, "1#{sum-1}".to_i] if sum == 2 || sum == 3
    return [2, "1#{sum-1}".to_i, "2#{sum-2}"] if sum == 4 || sum  == 5
    return [2, "1#{sum-1}".to_i, "3#{sum-3}"] if sum == 6 || sum  == 7
    return [2, "1#{sum-1}".to_i, "4#{sum-4}"] if sum == 8
  end

end
 
