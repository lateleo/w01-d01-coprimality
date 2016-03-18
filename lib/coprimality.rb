# Verifies that the GCD of the two numbers is not greater than 1.
def euclid_loop(arr)
  while arr[1] > 0
    arr.reverse! if arr[0] < arr[1]
    arr[0] = arr[0] - arr[1]
  end
  arr[0] + arr[1] <= 1
end

# Determines if the given numbers are coprime.
def determine_coprimality(m, n)
  abs = [m.abs,n.abs]
  !(abs.include?(1) || abs.include?(0)) && euclid_loop(abs)
end
