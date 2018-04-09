# class Bicycle
#   attr_reader :size, :tape_color

#   def initialize(args)
#     @size = args[:size]
#     @tape_color = args[:tape_color]
#   end

#   def spares
#     {
#       chain: '10-speed',
#       tire_size: '23',
#       tape_color: 'tape_color'
#     }
#   end
# end

# bike = Bicycle.new(size: 'M',tape_color: 'red')
# p bike.size
# p bike.spares

# 継承する上でのテクニック
# 抽象をみつける

# - モデル化しているオブジェクトが一般-特殊の関係をもつこと
# - 正しいコーディングをすること
# - 抽象クラスを作成する
# - ３つぐらいからが継承のタイミング。情報量なども踏まえた上で
# -　リファクタリングするときは抽象を昇格出来るようなコードを構成すること。
