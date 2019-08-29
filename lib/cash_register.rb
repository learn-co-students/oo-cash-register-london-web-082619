require "pry"

class CashRegister
    attr_reader :discount
    attr_accessor :total, :items, :last_transaction
    def initialize(discount=0) 
        @total = 0
        @discount = discount
        @items = []
    end
 
    def add_item(title, item_price, item_amount=1)
        @total = total + (item_price * item_amount)
        item_amount.times do 
            @items << title
        end
        @last_transaction = item_price * item_amount
    end
    
    def apply_discount
        if discount > 0
            @total = @total * (100 - @discount) / 100
            "After the discount, the total comes to $#{@total}."
        else
            "There is no discount to apply."
        end 
    end

    def void_last_transaction
        @total = @total - @last_transaction
    end
end
