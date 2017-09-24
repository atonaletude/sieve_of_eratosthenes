require 'pry'

class Sieve
  attr_accessor :amount_primes
  def initialize(amount_primes)
    @amount_primes = amount_primes
  end

  def primes
    # binding.pry
    self.amount_primes = (2..amount_primes).to_a
    amount_primes.each_with_object([]){ |value, object| object << value if prime?(value)}
  end

  def prime?(n)
    return true if n == 2
    results = (1..n).select do |value|
      (n % value).zero?
    end
    [1, n] == results
  end
end
