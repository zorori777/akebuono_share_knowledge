# class Gear
#   attr_reader :charing, :cog

#   def initialize(charing, cog)
#     @charing = charing
#     @cog = cog
#   end

#   def ratio
#     charing / cog.to_f
#   end
# end

# puts Gear.new(52, 11).ratio
# # 4.7272727272727275

# puts Gear.new(30, 27).ratio
# # 1.1111111111111112

## 車輪の違いによる影響も考慮してほしいという要望がくる

# class Gear
#   attr_reader :charing, :cog, :rim, :tire

#   def initialize(charing, cog, rim, tire)
#     @charing = charing
#     @cog = cog
#     @rim = rim
#     @tire = tire
#   end

#   def ratio
#     charing / cog.to_f
#   end

#   def get_inches
#     ratio * (rim +  (tire * 2))
#   end
# end

# puts Gear.new(52, 11, 26, 1.5).get_inches
# # 137.0909090909091

# puts Gear.new(30, 27, 24, 1.25).get_inches
# # 29.444444444444446

# class ObstrucignReferences
#   attr_reader :data

#   def initialize(data)
#     @data = data
#   end

#   def diameters
#     data.collect { |cell|
#       cell[0] + (cell[1] * 2)
#     }
#   end
# end

# puts ObstrucignReferences.new([[622, 20], [622, 23] ]).diameters

# この場合だと diametersメソッドは二次元配列の構造を知っている必要がある。
# つまりdataの構造が変わったらコードを変更する必要がある
# ex
# ObstrucignReferences.new([[622, 20], [622, 23], [[432, 21]] ]).diameters => errorとなる

#解決策

# class RevealingReferences
#   attr_reader :wheels

#   def initialize(data)
#     @wheels = wheelify(data)
#   end

#   def diameter
#     wheels.collect { |wheel|
#       wheel.rim + (wheel.tire * 2)
#     }
#   end

#   Wheel = Struct.new(:rim, :tire)
#   def wheelify(data)
#     data.collect { |cell|
#       Wheel.new(cell[0], cell[1])
#     }
#   end
# end

# puts RevealingReferences.new([[622, 20], [622, 23]]).diameter

# 車輪の円周の情報がほしい言われる

# class Gear
#   attr_reader :charing, :cog, :wheel

#   def initialize(charing, cog, wheel = nil)
#     @charing = charing
#     @cog = cog
#     @wheel = wheel
#   end

#   def ratio
#     charing / cog.to_f
#   end

#   def get_inches
#     ration * wheel.diameter
#   end
# end

# class Wheel
#   attr_reader :rim, :tire

#   def initialize(rim, tire)
#     @rim = rim
#     @tire = tire
#   end

#   def diameter
#     rim + (tire * 2)
#   end

#   def circmstance
#     diameter * Math::PI
#   end
# end

# puts Wheel.new(26, 1.5).circmstance
# 91.106186954104
