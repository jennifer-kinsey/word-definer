require 'word'
require 'rspec'
require 'pry'

describe (Word) do
  before do
    Word.clear
  end
  describe('#word') do
    it('returns the actual word that will be up for definition') do
      test_word = Word.new({:word =>'sesquipedalia'})
      expect(test_word.word).to(eq('sesquipedalia'))
    end
  end

  describe('.all') do
    it('returns a list of all the words and it is empty to start') do
      test_word = Word.new({:word =>'antidisestablishmentarianism'})
      expect(Word.all).to(eq([]))
    end
  end

  describe('#save') do
    it('adds saves the word to an array of words') do
      test_word = Word.new({:word =>'floccinaucinihilipilification'})
      expect(test_word.save).to(eq([test_word]))
    end
  end

  describe('.clear') do
    it('clears the array of our words for testing our specs') do
      test_word = Word.new({:word =>'tephrochronology'})
      test_word.save
      Word.clear
      expect(Word.all).to(eq([]))
    end
  end
end
