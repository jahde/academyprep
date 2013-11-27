def morse_encode_word(word)
  hash_morse = {"a" => ".-", "b" => "-...", "c" => "-.-.", "d" => "-..", "e" => ".", "f" => "..-.", "g" => "--.", "h" => "....", "i" => "..", "j" => ".---", "k" => "-.-", "l" => ".-..", "m" => "--", "n" => "-.", "o" => "---", "p" => ".--.", "q" => "--.-", "r" => ".-.", "s" => "...", "t" => "-", "u" => "..-", "v" => "...-", "w" => ".--", "x" => "-..-", "y" => "-.--", "z" => "--.."}
  morse_word = []
  word.each_char do |char|
    morse_word << hash_morse[char]
  end
  return morse_word.join(" ")
end

def morse_encode(str)
  return morse_encode_word(str)
end
