
class CashRegister

    attr_accessor :total
    attr_accessor :discount
    attr_accessor :items

    def initialize(discount=0)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(title, price, quantity=1)
        @price = price
        @quantity = quantity
        self.total += quantity * price
        quantity.times { self.items << title }
    end

    def apply_discount
        self.total = self.total * ((100 - self.discount.to_f)/100)
        if self.discount != 0
            return "After the discount, the total comes to $#{self.total.to_i}."
        else
            return "There is no discount to apply."
        end
    end

    def void_last_transaction
        @total -= @price * @quantity
    end

end