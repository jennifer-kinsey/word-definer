class Word
  attr_reader(:word, :id) 
  @@words = []

  def initialize (attributes)
    @word = attributes.fetch(:word)
    @definitions = []
    @id = @@words.length + 1
  end

  def self.all
    @@words
  end

  def save
    @@words.push(self)
  end

  def self.clear
    @@words = []
  end

  def definitions
    @definitions
  end

  def add_definitions(definitions)
    @definitions.push(definitions)
  end

  def self.find(id_num)
    found_word = nil
    @@words.each do |word|
      if word.id == id_num
        found_word = word
      end
    end
    found_word
  end

end
