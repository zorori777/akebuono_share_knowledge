# class Trip
#   attr_reader :bicycles, :customers, :vehicle

#   def prepare(mechanic)
#     # prepare_bicyclesに応答できるオブジェクトを受け取るということに依存している。
#     # 引数が自転車を準備することを信じている
#     mechanic.prepare_bicycles(bicycles)
#   end
# end


# class Mechanic
#   def prepare_bicycles(bicycles)
#     bicycles.each { |bicycle| prepare_bicycle(bicycle) }
#   end

#   def prepare_bicycle
#   end
# end



##ダックタイピング後

class Trip
  attr_reader :bicycle, :customers, :vehicle

  def prepare(prepares)
    prepares.each {|prepare|
      preparer.prepare_trip(self)
    }
  end
end

class Mechanic
  def prepare_trip(trip)
    trip.bicycles.each { |bicycle|
      prepare_bicycle(bicycle)
    }
  end
end
