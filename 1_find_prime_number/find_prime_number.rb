require 'prime'

def find_prime_number(seconds)
  start_time = Time.now
  index = 0
  largest_prime = 0

  while (Time.now - start_time) < seconds
    index += 1
    largest_prime = index if Prime.prime?(index)
  end

  puts "The largest prime found was #{largest_prime}"

  return nil
end

find_prime_number(ARGV[0].to_i)
