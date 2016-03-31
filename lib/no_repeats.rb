def no_repeats(year_start, year_end)
  no_repeats_years = []
  while year_start <= year_end
    no_repeats_years << year_start if no_repeat?(year_start)
    year_start += 1
  end
  no_repeats_years
end

def no_repeat?(year)
  year.to_s.split("").uniq.length === year.to_s.split("").length
end
