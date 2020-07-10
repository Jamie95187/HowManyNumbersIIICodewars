require 'solver'

describe 'solver' do

  solver = Solver.new

  describe 'find_all' do

    it('should return the correct answer when the amount of digits is 2') do
      expect(solver.find_all(2, 2)).to eq [1, 11, 11]
      expect(solver.find_all(4, 2)).to eq [2, 13, 22]
      # expect(solver.find_all(6, 2)).to eq [5, 15, 22]
    end

  end

end
