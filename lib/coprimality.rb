# Verifies that neither of the numbers are 1, -1, or 0.
def not_special_case?(arr)
  !arr.include?(1) && !arr.include?(0)
end

# This is the repeating subunit for euclid_loop.
def euclid_singlet(arr)
  arr.reverse! if arr[0] < arr[1]
  arr[0] = arr[0] - arr[1]
end

# Verifies that the GCD of the two numbers is not greater than 1.
def euclid_loop(arr)
  euclid_singlet(arr) while arr[1] > 0
  arr[0] + arr[1] <= 1
end

# Determines if the given numbers are coprime.
def determine_coprimality(m, n)
  positives = [m.abs, n.abs]
  not_special_case?(positives) && euclid_loop(positives)
end
