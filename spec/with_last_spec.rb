RSpec.describe WithLast do
  it "has a version number" do
    expect(WithLast::VERSION).not_to be nil
  end

  context 'Enumerator#with_last' do
    it "iterates with whether the item is the last item" do
      expect([1,2,3].map.with_last { |item, last| "#{item}#{last ? '.' : ','}"}.join).to eq "1,2,3."
    end

    it "returns enumerator with no block" do
      expect([1,2,3].map.with_last).to be_a Enumerator
    end

    it "chains enumerators " do
      expect { [1,2,3].each.with_index.with_last{|item, index, last| print [item, index, last] } }.to output("[1, 0, false][2, 1, false][3, 2, true]").to_stdout
    end
  end
  context 'Enumerable#each_with_last' do
    it "iterates with whether the item is the last item" do
      expect { [1,2,3].each_with_last { |item, last| print "#{item}#{last ? '.' : ','}"} }.to output("1,2,3.").to_stdout
    end
  end
end
