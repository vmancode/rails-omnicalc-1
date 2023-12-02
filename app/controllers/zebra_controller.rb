class ZebraController < ApplicationController
  def home
    render({ :template => "calc_templates/home_main" })
  end

  def sqres
    @num1 = params.fetch("number1").to_f
    @num1result = params.fetch("number1").to_f ** 2
    render({ :template => "calc_templates/sqres_temp" })
  end


  def sqrt
    render({ :template => "calc_templates/sqrt_temp" })
  end
  def sqrtres
    @num2 = params.fetch("number2").to_i
    @num2result = params.fetch("number2").to_f ** 0.5
    render({ :template => "calc_templates/sqrtres_temp" })
  end


  def pay
    render({ :template => "calc_templates/pay_temp" })
  end
  def payres
    @num3 = params.fetch("num3").to_f
    @num9 = @num3.to_fs(:percentage, {:precision => 4})
    @num6 = @num3/100/12
    @num4 = params.fetch("num4").to_f
    @num11 = @num4.to_i
    @num7 = @num4 *12
    @num5 = params.fetch("num5").to_f
    @num8 = @num5.to_fs(:currency, { :precision => 2 })
    @num5result = (@num6 * @num5) / (1 - (1+@num6)**(-@num7))
    @num10 = @num5result.to_fs(:currency, { :precision => 2 })
    render({ :template => "calc_templates/payres_temp" })
  end


  def ran
    render({ :template => "calc_templates/ran_temp" })
  end
  def ranres
    @num12 = params.fetch("num12").to_f
    @num13 = params.fetch("num13").to_f 
    @num15 = rand(@num12..@num13)
    @num14 = @num15
    render({ :template => "calc_templates/ranres_temp" })
  end

end
