require 'employ'

class Money
  
  def initialize(income, employ: nil)
    @pay = pay
    @employ = employ
    @income = income
  end

  # def calc_to_hr(income)
  #   # @income = income
  #   # p income
  #   @calc_to_hr = (income / 30 / 8 )
  #   p calc_to_hr
  # end

  def add_w(hrs)
    #半小時計算
    
    calc_to_hr = (@income / 30 / 8 ).to_i
    p calc_to_hr
    case hrs
    when 0..2
      @pay = (calc_to_hr * hrs * 1.34).to_i
    when 2.5..8
      @pay = ((calc_to_hr * 2 * 1.34) + calc_to_hr * (hrs - 2) * 1.67).to_i
    else
      @pay = ((calc_to_hr * 2 * 1.34) + (calc_to_hr * 6 * 1.67) + calc_to_hr * (hrs - 8) * 1.67).to_i
    end
  end

  def add_h(hrs)
    calc_to_hr = (@income / 30 / 8 ).to_i
    p calc_to_hr
    # p calc_to_hr * 8
    case hrs
    when 0..8
      @pay = calc_to_hr * 8
      # puts "0..8_#{pay}"
    when 8.5..10
      @pay = (calc_to_hr * 8 + (calc_to_hr * (hrs-8) * 2.34)).to_i
      # puts "8.5..10_#{pay}"
    else
      @pay = (calc_to_hr * 8 + (calc_to_hr * (2) * 2.34) + calc_to_hr * (hrs-10) * 2.67).to_i
      # puts "10up_#{pay}"
    end     
  end

  def pay
    
    @pay
    
  end


end