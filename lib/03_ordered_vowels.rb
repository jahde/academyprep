def ordered_vowel_word?(word)
  vowel_word = word.delete("^a e i o u")
  i = 0
  return true if vowel_word.size == 1
  while i < vowel_word.size-1
    return false if vowel_word[i] > vowel_word[i+1]
    i = i + 1
  end
  return true
end
  
def ordered_vowel_words(str)
  word_list = []
  str_word = str.split(" ")
  str_word.each do |word|
    word_list << word if ordered_vowel_word?(word)
  end
  return word_list.join(" ")
end


