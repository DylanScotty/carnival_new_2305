class Visitor
    attr_reader :name,
                :height,
                :spending_money


    def initialize(name, height, spending_money)
        @name = name
        @height = height
        @spending_money = parse_spending_money(spending_money)
        @preferences = []
    end

    def preferences
        @preferences
    end

    def parse_spending_money(spending_money)
        spending_money.delete("$").to_i
    end
end