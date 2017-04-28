class Word
  attr_reader(:word)
  @@words = []

  def initialize (attributes)
    @word = attributes.fetch(:word)
  end

  def self.all
    @@words
  end

  def save
    @@words.push(self)
  end

end
