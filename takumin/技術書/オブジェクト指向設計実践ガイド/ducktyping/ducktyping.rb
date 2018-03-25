# 学び
- 動的言語は渡したのもがどのように振る舞うかは渡したもの自信が決定する。
つまりメソッドが定義されてれば継承していない場合でも呼び出すことが出来る。
class Dog
  def say; puts 'ワンワン'; end
end

class Duck
  def say; puts 'ガーガー'; end
end

class Human
  def touch(animal)
    animal.say
  end
end

human = Human.new
dog   = Dog.new
duck  = Duck.new

human.touch(dog)    #=>"ワンワン"
human.touch(duck)   #=>"ガーガー"

# class Takumi
#   def call_taku
#     puts "Wata！"
#   end
# end

# class Watasan
#   def call_taku
#     puts "Takumin!"
#   end
# end

# class Watanabe
#   def need(who)
#     who.call_taku
#   end
# end

# takumi = Takumi.new
# watasan = Watasan.new
# nabe = Watanabe.new


# nabe.need(takumi)
# nabe.need(watasan)
