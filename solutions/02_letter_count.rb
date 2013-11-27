def letter_count(str)
  counts = {}

  str.each_char do |char|
    next if char == " "
    counts[char] = 0 unless counts.include?(char)
    counts[char] += 1
  end

  counts
end

=begin
def count_word_characters(s)
    h = Hash.new(0)
    s.each_char do |char| 
        next unless char =~/\w/
        h[char] += 1
    end
    h
end
=end