
class IMC

attr_accessor :weight
attr_accessor :height
attr_accessor :imc_number

  def initialize weight, height
    @weight = weight
    @height = height
  end

  def calculate_imc
    @imc_number = (@weight/@height**2).round
  end

  def get_imc_result
    case @imc_number
    when 1...18.5
      return "underweight"
    when 18.5...25
      return "normal"
    when 25...30
      return "overweight"
    else
      return "obese"
    end
  end

  def is_overweight
    if @imc_number > 25
      return true
    end
      false
  end

end
