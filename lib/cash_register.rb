require 'pry'

class CashRegister

    attr_accessor :total, :discount, :title, :price, :quantity, :discount_total

    def initialize(discount = 0)
        @total = 0
        @discount = discount
    end

    def add_item(title, price, quantity=1)
        @title=title
        @price=price
        @quantity=quantity
        @total = @total + @price * @quantity
    end

    def apply_discount(discount_total=0)
        @discount_total = @total - @discount / 100 * @total
        puts "After the discount, the total comes to #{total}"
    end

end


# @discount_total = @total - @discount / 100 * @total
#         binding.pry
#         @total = @discount_total