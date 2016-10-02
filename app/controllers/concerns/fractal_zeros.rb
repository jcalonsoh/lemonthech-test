# Escriba una función/método que determine
# la cantidad de 0’s a la derecha de n! (factorial)
#
# This module is the answer 1 of Lemontech test
# module logic take
# http://stackoverflow.com/questions/23977727/the-number-of-trailing-zeros-in-a-factorial-of-a-given-number-ruby
module FractalZeros
  extend ActiveSupport::Concern

  def self.counter(n)
    return 0 if n.zero?
    k = (Math.log(n) / Math.log(5)).to_i
    m = 5**k
    n * (m - 1) / (4 * m)
  end
end
