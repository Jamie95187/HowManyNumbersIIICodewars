class Solver

  def find_all(sum, numDigits)
    [sum-1, "1#{sum-1}".to_i, "#{sum-1}1".to_i]
  end

end
 
