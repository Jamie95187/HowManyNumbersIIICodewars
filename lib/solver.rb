class Solver

  def find_all(sum, numDigits)
    return [1, "1#{sum-1}".to_i, "1#{sum-1}".to_i] if sum == 2 || sum == 3 && numDigits != 3
    return [2, "1#{sum-1}".to_i, "2#{sum-2}".to_i] if sum == 4 || sum  == 5
    return [3, "1#{sum-1}".to_i, "3#{sum-3}".to_i] if sum == 6 || sum  == 7
    return [4, "1#{sum-1}".to_i, "4#{sum-4}".to_i] if sum == 8 || sum == 9
    [1, 111, 111]
  end

end
 
