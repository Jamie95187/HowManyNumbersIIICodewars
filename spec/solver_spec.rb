require 'solver'

describe 'solver' do

  solver = Solver.new

  describe 'find_all' do

    it('should return the correct answer when the amount of digits is 2') do
      expect(solver.find_all(2, 2)).to eq [1, 11, 11]
      expect(solver.find_all(3, 2)).to eq [1, 12, 12]
      expect(solver.find_all(4, 2)).to eq [2, 13, 22]
      expect(solver.find_all(5, 2)).to eq [2, 14, 23]
      expect(solver.find_all(6, 2)).to eq [3, 15, 33]
      expect(solver.find_all(7, 2)).to eq [3, 16, 34]
      expect(solver.find_all(8, 2)).to eq [4, 17, 44]
      expect(solver.find_all(9, 2)).to eq [4, 18, 45]
    end

    it('should return the correct answer when the amount of digits is 3') do
      expect(solver.find_all(3, 3)).to eq [1, 111, 111]
      expect(solver.find_all(4, 3)).to eq [1, 112, 112]
    end

  end

end
