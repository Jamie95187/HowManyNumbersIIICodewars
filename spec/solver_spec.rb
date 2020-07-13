require 'solver'

describe 'solver' do

  solver = Solver.new

  describe 'find_all' do

    it('should return empty array if invalid') do
      expect(solver.find_all(64, 3)).to eq []
    end

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
      expect(solver.find_all(5, 3)).to eq [2, 113, 122]
      expect(solver.find_all(6, 3)).to eq [3, 114, 222]
      expect(solver.find_all(7, 3)).to eq [4, 115, 223]
      expect(solver.find_all(8, 3)).to eq [5, 116, 233]
      expect(solver.find_all(9, 3)).to eq [7, 117, 333]
      expect(solver.find_all(10, 3)).to eq [8, 118, 334]
      expect(solver.find_all(11, 3)).to eq [10, 119, 344]
      expect(solver.find_all(12, 3)).to eq [10, 129, 444]
      expect(solver.find_all(13, 3)).to eq [12, 139, 445]
      expect(solver.find_all(14, 3)).to eq [12, 149, 455]
      expect(solver.find_all(15, 3)).to eq [13, 159, 555]
      expect(solver.find_all(19, 3)).to eq [9, 199, 667]
      expect(solver.find_all(25, 3)).to eq [2, 799, 889]
      expect(solver.find_all(26, 3)).to eq [1, 899, 899]
      expect(solver.find_all(27, 3)).to eq [1, 999, 999]
    end

    it('should return the correct answer when the amount of digits is 4') do
      expect(solver.find_all(4, 4)).to eq [1, 1111, 1111]
      expect(solver.find_all(5, 4)).to eq [1, 1112, 1112]
    end

  end

end
