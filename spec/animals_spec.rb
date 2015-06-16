require 'animals'

RSpec.describe Animals do
  describe '#counts' do
    context 'when there are multiples of one animal and singles of others' do

      let(:subject) { Animals.new(['panda','lion','panda','poodle','panda'])}

      it 'returns a hash where the value matches the count of the multi animal' do
        expect(subject.counts[:panda]).to equal(3)
      end
      it 'returns a hash where the value matches the count of the single animal' do
        expect(subject.counts[:poodle]).to equal(1)
      end
    end
  end
  describe '#count' do
    context 'when there are multiples of one animal and singles of others' do

      let(:subject) { Animals.new(['panda','lion','panda','poodle','panda'])}

      it 'returns a count value that matches the count of the multi animal' do
        expect(subject.count('panda')).to equal(3)
      end
      it 'returns a value that matches the count of the single animal' do
        expect(subject.count('poodle')).to equal(1)
      end
    end
  end
  describe '#<<' do
    context 'when there are existing counts and another animal, counts change' do

      let(:subject) { Animals.new(['panda','lion','panda','poodle','panda'])}

      it 'adds an existing animal and returns its new count' do
        pre = subject.count('panda')
        expect(subject << 'panda' ).to equal(pre + 1)
      end
      it 'adds a new animal and returns its count' do
        expect(subject << 'aardvark' ).to equal(1)
      end
    end
  end
end

