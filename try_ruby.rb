# module Watanabe
#   module Takumi
#     module Mirai
#       def call_name
#         p self
#         puts "なんですか"
#       end
#     end
#   end
# end


# class Karen::OI
#   include Watanabe::Takumi::Mirai

#   def call_name
#     p self
#     super
#   end
# end

# p karen = Karen::OI.new.call_name

# class Cat
#   @siro = "kuro"
#   attr_reader :siro

#   def initialize(siro="siro")
#     @siro = siro
#   end

#   def self.kuro
#     @siro
#   end
# end

# Cat.class_eval do
#   def call_name
#     p "なんだと"
#   end
# end


# cat = Cat.new.call_name

class Boss
  private
  def call_boss_private
    p "bossssss"
  end
end

class Takumi < Boss
  def call_protected
    p protected_wata
  end

  def call_private
    call_boss_private
  end

  def protected_wata
    add = {karen: "いもうと"}
    private_wata.merge(add)
  end
  protected :protected_wata

  def private_wata
    fami = {taku: "ani", miai: "otoutp"}
  end
  private :private_wata
end



Takumi.new.call_protected
Takumi.new.call_private


