def no_repeats(year_start, year_end)
  def no_repeat?(year)
    a = year.to_s.split('')
    if a.uniq.length == a.length
      return true
    else
      return false
    end
  end
  
  unique_years = []
  (year_start..year_end).each do |year|
    if no_repeat?(year) 
      unique_years << year
    else
      nil
    end
  end
  unique_years 
end

#no_repeats(1234, 1234)
#no_repeats(1123, 1123)
no_repeats(1980, 1987)

