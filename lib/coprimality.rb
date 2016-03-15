# This method takes two integers, m and n, and determines whether those integers are co-prime


def determine_coprimality(m, n)
  big = m
  sml = n
  while m != n
    if m < n
      var1 = m
      m = n
      n = var1
    end
    dif = m - n
    m = dif
  end
  if m > 0
    return false
  end
  return true
end
