require 'definition'
require 'rspec'
require 'pry'


describe(Definition) do

  describe('#definition') do
    it('returns a string of words which is a definition of a word') do
      test_definition = Definition.new({:definition => 'characterized by long words; long-winded'})
      expect(test_definition.definition).to(eq('characterized by long words; long-winded'))
    end
  end

  describe('.all') do
    it('returns all the definitions of the word which is nothing at first') do
      test_definition = Definition.new({:definition => 'doctrine opposed to removing Church of Englands official religion status'})
      expect(Definition.all).to(eq([]))
    end
  end

#MAY WANT TO REVISIT THIS
  describe('#save') do
    it('saves the definition into an array of definitions') do
      test_definition = Definition.new({:definition => 'setting at little or no value'})
      expect(test_definition.save).to(eq(['setting at little or no value']))
    end
  end

end
