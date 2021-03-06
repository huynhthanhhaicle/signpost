# Power law (log tail) distribution
# Copyright(C) 2010 Salvatore Sanfilippo
# this code is under the public domain
#
# http://antirez.com/post/PRNG-power-law-long-tail.html

# min and max are both inclusive
# n is the distribution power: the higher, the more biased

# http://rubystats.rubyforge.org/files/README_txt.html
require 'rubystats'

module Distribution
  def self.powerlaw(min,max,n)
      max += 1
      pl = ((max**(n+1) - min**(n+1))*rand() + min**(n+1))**(1.0/(n+1))
      ((max-1-pl.to_i)+min).to_i
  end

  def self.random(min, max)
    min + rand(max - min).to_i
  end

  def self.number_of_signposts_per_user p
    gen = Rubystats::NormalDistribution.new(mean, sd)
    gen.rng               # a single random sample
  end
end
