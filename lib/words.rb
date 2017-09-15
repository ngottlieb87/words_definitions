class Word
  @@word_list = []
  attr_reader(:id, :definition_id)
  attr_accessor(:word, :definition)

  def initialize(attributes)
    @word = attributes.fetch(:word)
    @id = @@word_list.length + 1
  end

  def self.all
    @@word_list
  end

  def self.find(id)
    word_id = id.to_i()
    @@word_list.each do |word|
      if word.id == word_id
        return word
      end
    end
  end

  def self.clear
    @@word_list = []
  end

  def save()
    @@word_list.push(self)
  end
end

class Kids_def
  @@definition = []
  attr_reader(:definition_id)
  attr_accessor(:definition)

  def initialize(attributes)
    @definition = attributes.fetch(:definition)
    @definition_id = attributes.fetch(:definition_id)
  end

  def self.def_all
    @@definition
  end

  def self.clear_def
    @@definition = []
  end

  def def_save
    @@definition.push(self)
  end

end
