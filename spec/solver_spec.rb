require 'solver'

describe 'solver' do

  solver = Solver.new

  describe 'find_all' do

    it('should return the correct answer when the amount of digits is 2') do
      expect(solver.find_all(2, 2)).to eq [1, 11, 11]
      expect(solver.find_all(3, 2)).to eq [1, 12, 12]
      expect(solver.find_all(4, 2)).to eq [2, 13, 22]
      expect(solver.find_all(5, 2)).to eq [2, 14, 23]
    end

  end

end
