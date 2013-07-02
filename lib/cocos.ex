defmodule Cocos do
  @pirates 7

  def check_division nuts // 1 do
    case do_check_division nuts, @pirates - 1 do
      nil -> check_division nuts + @pirates
      result -> result
    end
  end

  defp do_check_division nuts, 0 do
    nuts
  end

  defp do_check_division nuts, level do
    if rem(nuts, @pirates-1) == 0 and rem(nuts, @pirates) == 1 do
      1 + nuts + div(nuts, @pirates - 1) |> do_check_division level - 1
    end
  end
end

IO.puts Cocos.check_division
