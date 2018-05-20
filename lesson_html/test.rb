class Character
    # インスタンス変数
    attr_accessor :hp, :power
    
    def initialize(hp, power)
        self.hp = hp
        self.power = power
    end
    
    # self.nameとして呼ばれるが実際にはSlimeやHeroのnameが呼び出される
    # このnameは呼び出されないので、''を返すだけにしておく
    def name
    ''
end

    
    def attack(character)
        character.hp -= self.power
        puts "#{self.name}が#{character.name}を攻撃して#{self.power}ポイントのダメージを与えた!"
        
        if character.hp <= 0
            self.defeat(character)
        end
    end
    
    def defeat(character)
        puts "#{self.name}は#{character.name}を倒した！"
    end
end

class Slime < Character
     # クラス変数
     # クラス種類そのものなので、最初から代入して、以後変更しない
     @@type = 'スライム'
     
    # インスタンス変数
    attr_accessor :suffix
    
    def initialize(suffix)
        super(10,3)
        self.suffix = suffix
    end
    
    def name
        #このSlime クラスのクラス変数 type ('スライム')を返す
        @@type + self.suffix
    end
    
    # クラスメゾット
    def self.description
        puts @@type + 'は最弱モンスターだ!'
    end
end

class Hero < Character
    # クラス種類そのものなので、最初から代入して、以後変更しない
    @@type = '主人公'
    
def initialize
    super(1000,30)
end

def name
    # インスタンス変数ではなくクラス変数を呼び出している
    @@type
end

def self.description
    puts @@type + 'はこの世界を守る勇者だ!'
end
end

hero = Hero.new
slime_A = Slime.new('A')

slime_A.attack(hero)
hero.attack(slime_A)

Hero.description
Slime.description


