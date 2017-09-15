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
      word = Word.new({:word=>"Zebra"})
      word.save()
      expect(Word.all()).to(eq([word]))
    end
  end

  describe(".clear") do
    it("clear previous word from list to not recieve duplicates to list") do
      word= Word.new({:word=> "Rabbit"})
      word.save()
      Word.clear()
      expect(Word.all()).to(eq([]))
    end
  end
end
