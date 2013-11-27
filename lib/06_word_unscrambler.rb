def word_unscrambler(str, words)
	a = str.split("").sort
	word_list = []
	words.each do |x|
		if x.to_s.split("").sort == a
			word_list << x
		end
	end
	return word_list
end

