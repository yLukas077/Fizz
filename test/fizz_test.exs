defmodule FizzTest do
  use ExUnit.Case

  describe "build/1" do
    test "when a valid file is provided, returns the converted list" do
      text_mss = {:ok, [:fizz, 4, :buzz, 52, :fizz, :fizz, :fizz, :fizzbuzz]}

      assert Fizz.build("numbers.txt") == text_mss
    end

    test "when a invalid file is provided, returns an error" do
      text_mss = {:error, "Error reading the file: enoent"}

      assert Fizz.build("invalid.txt") == text_mss
    end
  end
end
