defmodule Remark do
  def silence?(input), do: String.strip(input) == ""
  def shouting?(input), do: String.upcase(input) == input and String.downcase(input) != input
  def question?(input), do: String.ends_with?(input, "?")
end

defmodule Teenager do
  def hey(input) do
    cond do
      Remark.silence?(input) -> "Fine. Be that way!"
      Remark.shouting?(input) -> "Whoa, chill out!"
      Remark.question?(input) -> "Sure."
      true -> "Whatever."
    end
  end
end
