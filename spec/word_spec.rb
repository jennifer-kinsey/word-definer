require 'word'
require 'rspec'
require 'pry'

describe (Word) do
  describe('#word') do
    it('returns the actual word that will be up for definition') do
      test_word = Word.new({:word =>'sesquipedalia'})
      expect(test_word.word).to(eq('sesquipedalia'))
    end
  end
end
