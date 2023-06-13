require './lib/visitor'

class Ride
    attr_reader :name, :min_height, :admission_fee, :excitement, :rider_log
  
    def initialize(attributes)
      @name = attributes[:name]
      @min_height = attributes[:min_height]
      @admission_fee = attributes[:admission_fee]
      @excitement = attributes[:excitement]
      @rider_log = {}
    end
  
    def total_revenue
      @rider_log.values.sum * @admission_fee
    end
  
    def board_rider(visitor)
      return unless can_board?(visitor)
  
      deduct_admission_fee(visitor)
      update_rider_log(visitor)
    end

    def can_board?(visitor)
      visitor.tall_enough?(@min_height) && visitor.preferences.include?(@excitement)
    end
  
    def deduct_admission_fee(visitor)
      visitor.spending_money -= @admission_fee
    end
  
    def update_rider_log(visitor)
      @rider_log[visitor] ||= 0
      @rider_log[visitor] += 1
    end
  end