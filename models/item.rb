class Item
attr_accessor :item, :amount
@@all = []
def initialize(item, amount)
    @item = item
    @amount = amount

end

def self.all
    @@all
end

end