class Compare
  attr_accessor :alice, :bob

  def initialize(alice, bob)
    @alice = alice[2]
    @bob = bob[2]
  end

  def compareTiplets(a, b)
    w =  [0, 0]
    a.each do |al|
      b.each do |bo|
        if al < bo
          w[1] += 1
        elsif al > bo
          w[0] += 1
        else
          w[0] += 0
          w[1] += 0
        end
      end
    end
    return w
  end

end

