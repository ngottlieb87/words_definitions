require "rspec"
require "pry"
require "words"

  describe("Word") do
    before() do
      Word.clear()
    end

  describe(".all") do
    it("list begins with no content") do
    expect(Word.all()).to(eq([]))
  end
end

  describe("#save") do
    it("it will save a word to a list of words") do
      word = Word.new({:input_word=>"Zebra", :definition=>"A wild african horse"})
      word.save()
      expect(Word.all()).to(eq([word]))
    end
  end

  describe(".clear") do
    it("clear previous word from list to not recieve duplicates to list") do
      word= Word.new({:input_word=> "Rabbit", :definition=> "a burrowing, gregarious, plant-eating mammal with long ears, long hind legs, and a short tail."})
      word.save()
      Word.clear()
      expect(Word.all()).to(eq([]))
    end
  end
end
