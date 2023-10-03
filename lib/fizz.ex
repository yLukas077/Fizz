defmodule Fizz do
  def build(file_name) do
    file_name
    |> File.read()
    |> inspect_file()
  end

  defp inspect_file({:ok, result}) do
    result =
      result
      |> String.split(",")
      |> Enum.map(&convert_numbers/1)

    {:ok, result}
  end

  defp inspect_file({:error, reason}), do: {:error, "Error reading the file: #{reason}"}

  defp convert_numbers(elem) do
    elem
    |> String.to_integer()
    |> evaluete_num()
  end

  defp evaluete_num(number) when rem(number, 3) == 0 and rem(number, 5) == 0, do: :fizzbuzz
  defp evaluete_num(number) when rem(number, 3) == 0, do: :fizz
  defp evaluete_num(number) when rem(number, 5) == 0, do: :buzz
  defp evaluete_num(number), do: number
end
