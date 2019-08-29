class CashRegister
    attr_accessor :total, :discount, :last_price
    def initialize ( discount = nil)
        @total = 0
        @discount = discount
        @items = []
    end 
    def add_item (title, price, quantity = 1)
        self.last_price = price*quantity
        self.total = self.total+(price*quantity)
        for i in (1..quantity)
          @items.append(title)
        end 
    end 
    def apply_discount ()
        if self.discount
            self.total = self.total.to_f - self.total.to_f*(self.discount.to_f/100)
            return "After the discount, the total comes to $#{self.total.to_i}."
        else
            return "There is no discount to apply."
        end
    end 
    def void_last_transaction
        self.total = self.total- self.last_price
        @items.pop
    end
   def items
        @items
    end 
end