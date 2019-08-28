class CashRegister
    attr_accessor :total, :cart
    attr_reader :discount

    def initialize(discount = nil)
        @total = 0
        @discount = discount
        @cart = []
    end

    def add_item(title, price, quantity = 1)
        quantity.times do
            @cart << {title: title, price: price, quantity: quantity}
        end
        @total += price * quantity
    end

    def apply_discount
        if @discount
            @total -= (@total*@discount)/100
            "After the discount, the total comes to $#{@total}."
        else
            "There is no discount to apply."
        end
    end

    def items
        @cart.map do |a|
            a[:title]
        end
    end

    def void_last_transaction
        @total -= @cart.last[:price]*@cart.last[:quantity]
    end

end

