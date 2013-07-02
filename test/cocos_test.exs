Code.require_file "test_helper.exs", __DIR__

defmodule CocosTest do
  use ExUnit.Case

  test "result is integer" do
    result = Cocos.check_division
    result = result |> split_cocos 7
    assert rem(round(result) - 1, 7) == 0
  end

  def split_cocos n, 1 do
    n
  end

  def split_cocos n, level do
    (((n - 1)/ 7) * 6) |> split_cocos level - 1
  end
end
