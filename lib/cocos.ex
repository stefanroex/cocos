defmodule Cocos do
  @pirates 7

  def check_division nuts // 1 do
    case do_check_division nuts, @pirates do
      nil -> check_division nuts + 1
      result -> result
    end
  end

  defp do_check_division nuts, 1 do
    nuts
  end

  defp do_check_division nuts, level do
    if rem(nuts, @pirates-1) == 0 && rem(nuts, @pirates) == 1 do
      next_nuts = 1 + nuts + div(nuts, @pirates - 1)
      do_check_division next_nuts, level - 1
    end
  end
end

IO.puts Cocos.check_division
