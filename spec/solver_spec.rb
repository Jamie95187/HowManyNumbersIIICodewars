require 'solver'

describe 'solver' do

  solver = Solver.new

  describe 'find_all' do

    it('should return the correct answer when the amount of digits is 2') do
      expect(solver.find_all(4, 2)).to eq [3, 13, 31]
      expect(solver.find_all(6, 2)).to eq [5, 15, 51]
    end

  end

end
