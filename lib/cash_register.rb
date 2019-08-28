class CashRegister
    
    attr_accessor :discount, :total, :items, :last_transaction

    def initialize(discount=0)
        @total = 0 
        @discount = discount
        @items = []
    end 

    def add_item(title, price, quantity=1)
        self.total += price * quantity
        quantity.times do 
          items << title
        end
    end

    def apply_discount
       if discount > 0 
        "After the discount, the total comes to "
        else 
            "There is no discount to apply."
        end
    end



end

