class Slime
    #オブジェクトの変数
    attr_accessor :type, :hp, :power, :suffix
    
    #初期化用の特別なメゾット
    def initialize(suffix)
        self.type = 'スライム'
        self.hp = 10
        self.power = 3
        self.suffix = suffix # suffix 引数による初期化
    end
    
    #スライム個体の名前は、'スライムA' など 'スライム' + 'A' (suffix) とする
    def name
        self.type + self.suffix     # retrnの省略
    end
    
    #オブジェクトのメゾット
    def attack(character_name)
        
        #self.typeではなくself.nameを呼び出す
        puts "#{self.name}が#{character_name}を攻撃して#{self.power}ポイントのダメージを与えた!"
    end
end

slime_A = Slime.new('A')    # suffix 引数による初期化
slime_A.attack('主人公')
