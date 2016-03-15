# This method takes two integers, m and n, and determines whether those integers are co-prime

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
  
  return true
end
