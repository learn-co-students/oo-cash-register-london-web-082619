require 'pry'

class CashRegister
    attr_reader :discount, :cart, :total
    attr_accessor :total

    def initialize(discount=nil)
        @total = 0 
        @discount = discount
        @cart = []
    end

    def add_item(title, price, quantity=1)
        self.total += price * quantity
        self.cart << {
            title: title,
            price: price,
            quantity: quantity
        }
    end

    def items
        self.cart.each_with_object([]) do | item, array |
            item[:quantity].times { array << item[:title] }
        end
    end

    def apply_discount
        if self.discount
            self.total *= ((100 - self.discount) / 100.0)
            self.total = self.total.round
            "After the discount, the total comes to $#{self.total}."
        else
            "There is no discount to apply."
        end
    end

    def void_last_transaction
        last_item = self.cart.pop
        self.total -= (last_item[:price] * last_item[:quantity])
    end


end