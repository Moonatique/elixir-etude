defmodule Powers do
  import Kernel, except: [raise: 2, raise: 3]

  def raise(_, 0) do
    1
  end

  def raise(x, n) when n > 1 do
    raise(x, n, 1)
  end

  def raise(x, n) when n < 0 do
    1.0 / raise(x, -n)
  end

  defp raise(_, 0, acc) do
    acc
  end

  defp raise(x, n, acc) do
    raise(x, n - 1, acc * x)
  end
end
