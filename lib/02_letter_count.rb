def letter_count(str)
  letters = {}
  a = str.gsub(/\s+/, "").split("")
  a.each do |k|
    letters[k] = a.count(k)
  end
  letters  
    
end

#letter_count("cat")
#letter_count("moon")
letter_count("cats are fun")
