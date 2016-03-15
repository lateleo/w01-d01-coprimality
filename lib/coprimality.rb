# This method takes two integers, m and n, and determines whether those integers are co-prime

require 'pry'

def determine_coprimality(m, n)
  big = 0
  sml = 0
  if m > n
    big = m
    sml = n
  elsif n < m
    big = n
    sml = m
  elsif n = m
    return false
  end
  while big * sml != 0
    dif = big - sml
    big = dif
    if big < sml
      var1 = big
      big = sml
      sml = var1
    end
    puts "#{big}, #{sml}"
  end
end

binding.pry
