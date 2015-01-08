class String
  define_method(:anagram) do |word2|
    letters_1 = self.split("")
    answer = ""
    word_list = word2.split()
    word_list.each() do |word|
      if letters_1.sort() == word.split("").sort()
        answer.concat(word).concat(" ")
      else
        answer.concat("")
      end
    end
    answer
  end
end
