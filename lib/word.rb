class Word
  attr_reader(:word)
  @@words = []

  def initialize (attributes)
    @word = attributes.fetch(:word)
    @definitions = []
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

end
