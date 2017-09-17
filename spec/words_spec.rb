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

describe("Definition") do
  before() do
    Kids_def.clear_def()
  end

  describe(".def_all") do
    it("list of definitions begins with no content") do
      expect(Kids_def.def_all).to(eq([]))
    end
    describe("#def_save") do
      it("it will save definitions to list") do
        lion = Kids_def.new({:definition => "a big scary cool cat", :definition_id=> @id})
        lion.def_save
        expect(Kids_def.def_all).to(eq([lion]))
      end
    end
    describe(".clear_def") do
      it("clear all existing definitions and definition ids from the list") do
        monkey= Kids_def.new({:definition=>"funny jungle animal", :definition_id=>@id})
        monkey.def_save
        Kids_def.clear_def
        expect(Kids_def.def_all).to(eq([]))
      end
    end
  end
end
