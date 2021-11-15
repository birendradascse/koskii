class OrderItem < ApplicationRecord
    belongs_to :order
    belongs_to :product


    before_action :set_unit_price
    before_action :set_total

    def unit_price
        if persisted?
        else
            product.price
        end
    end

    def total
        unit_price * quantity
    end

    private

    def set_unit_price
        self[:unit_price] = unit_price
    end

    def set_total
        self[:total] = total * quantity
    end

end
