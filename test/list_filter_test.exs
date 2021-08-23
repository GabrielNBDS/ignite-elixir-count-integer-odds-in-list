defmodule ListFilterTest do
  use ExUnit.Case

  describe "call/1" do
    test "count integer odds in list" do
      list1 = [1, 2, 3, 4, 5]
      list2 = [1, "banana", 2, 3, 3.5]
      list3 = []

      assert ListFilter.call(list1) == 3
      assert ListFilter.call(list2) == 2
      assert ListFilter.call(list3) == 0
    end
  end
end
