# This method takes two integers, m and n, and determines whether those integers are co-prime


def determine_coprimality(m, n)
  if m.abs == 1 || n.abs == 1 || m * n == 0
    return false
  end
  m = m.abs
  n = n.abs
  while n > 0
    if m < n
      var1 = m
      m = n
      n = var1
    end
    dif = m - n
    m = dif
  end
  if m + n > 1
    return false
  end
  return true
end
