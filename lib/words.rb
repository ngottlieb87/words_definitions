class Word
  @@word_list = []

  attr_reader(:id)
  attr_accessor(:input_word, :definition)

  def initialize(attributes)
    @word = attributes.fetch(:input_word)
    @def = attributes.fetch(:definition)
    @id = @@word_list.length + 1
  end

  def self.all()
    @@word_list
  end

  def self.find(id)
    word_id = id.to_i
    @@word_list.each do |word|
      if words.id == word_id
        return word
      end
    end
  end

  def self.clear()
    @@word_list = []
  end

  def save()
    @@word_list.push(self)
  end
end
