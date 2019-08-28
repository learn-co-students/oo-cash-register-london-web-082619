
class CashRegister 
    attr_accessor :total, :discount, :item, :quantity, :price 

    def instialize (disount = nil)
        @total = 0
        @discount = discount 
        @items = []
    end 

    def add_item (title, price, quantity =1)
        @price = price 

        @total += @price * quantity
        if quanity > 1
            counter = 0 
            while counter < quantity 
                @items << title 
                counter += 1
            end 

        else 
            @items << title 
        end 
    end 


    def apply_discount 
        if @discount == nil 
            "There is no discount to apply"
        else 
            @total -= @price 
        end 

    end 