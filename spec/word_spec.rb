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

  describe('#definitions') do
    it('return the definitions array; it is empty to start')do
      test_word = Word.new({:word =>'rhinotillexomania'})
      expect(test_word.definitions).to(eq([]))
    end
  end

  describe('#add_definitions') do
    it('adds the definitions to the selected word') do
      test_word = Word.new({:word =>'podobromhydrosis'})
      test_definition = Definition.new({:definition => 'smelly feet'})
      test_word.add_definitions(test_definition)
      expect(test_word.definitions).to(eq([test_definition]))
    end
  end

  # describe('#add_picture') do
  #   it('returns the image link for the word') do
  #     test_word = Word.new({:word =>'arachibutyrophobia'})
  #     this = test_word.add_picture('sample.jpg')
  #     expect(test_word.add_picture).to(eq('sample.jpg'))
  #   end
  # end

  describe('#id') do
    it('returns the id number of the Word') do
      test_word = Word.new({:word =>'ichthyocoprolite'})
      test_word.save
      expect(test_word.id).to(eq(1))
    end
  end

  describe('.find') do
    it('returns a word by its ID number') do
      test_word = Word.new({:word =>'autothaumaturgist'})
      test_word.save
      expect(Word.find(test_word.id)).to(eq(test_word))
    end
  end
end
