module FractalZeros
  extend ActiveSupport::Concern

  def self.counter(n)
    return 0 if n.zero?
    k = (Math.log(n)/Math.log(5)).to_i
    m = 5**k
    n*(m-1)/(4*m)
  end

end
