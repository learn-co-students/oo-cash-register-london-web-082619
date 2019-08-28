class CashRegister
    attr_accessor :total, :cart
    attr_reader :discount
     
    def initialize(discount = nil)
        @total = 0
        @discount = discount
        @cart = []
    end

    def add_item(title, price, quantity = 1)
        @total += price * quantity
        quantity.times do 
            @cart << {title: title, price: price, quantity: quantity}
        end    
    end

    def apply_discount
        unless @discount
            "There is no discount to apply."
        else
            @total -= (@total * @discount) / 100
            "After the discount, the total comes to $#{@total}."
        end
    end

    def items
        @cart.map do | a | 
            a[:title]
        end
    end

    def void_last_transaction
        @total -= @cart.last[:price] * @cart.last[:quantity]
    end


end
