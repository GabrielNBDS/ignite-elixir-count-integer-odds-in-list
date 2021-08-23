defmodule ListFilter do
  def call(list) do
    run(list)
  end

  defp run(list) do
    Enum.filter(list, fn item -> is_integer(item) end)
    |> Enum.filter(fn item -> rem(item, 2) != 0 end)
    |> Enum.count()
  end
end
