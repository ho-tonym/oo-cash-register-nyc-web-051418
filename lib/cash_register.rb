require "pry"

class CashRegister

attr_accessor :discount, :total
attr_writer
attr_reader

  def initialize(d_amount = 20)
    @discount = d_amount
    @total = 0
    @array_of_items = []
  end

  # def add_item(string, total)
  #   @total = total
  # end
   def add_item(string_item, total, quantity = 1)

     @total = @total + (total * quantity)
     @array_of_items << string_item
   end

   def apply_discount
     if @discount == 0 || @discount == nil || @total == 0
        "There is no discount to apply."
     else
       d = @discount/100.0
       discount_amount = 1 - d # to ge the % amount we want to multiply by
       @total = (@total * discount_amount).to_i

      "After the discount, the total comes to $#{@total}."
    end
   end

   def items

     array_of_items << item
   end
end
