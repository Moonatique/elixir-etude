defmodule Geom do
  @moduledoc """
  Function for calculating areas of geometrics shapes
  """

  @doc """
  Take an atom representing the shape and measures necessary to calculate its area
  """

  @spec area({atom(), number(), number()}) :: number()

  def area({atom, dim1, dim2}) do
    area(atom, dim1, dim2)
  end

  @spec area(atom(), number(), number()) :: number()

  defp area(:rectangle, length, width) when length >= 0 and width >= 0 do
    length * width
  end

  defp area(:triangle, base, height) when base >= 0 and height >= 0 do
    base * height / 2.0
  end

  defp area(:ellipse, majorRadius, minorRadius) when majorRadius >= 0 and minorRadius >= 0 do
    :math.pi() * majorRadius * minorRadius
  end

  defp area(_, _, _) do
    0
  end

  @spec areaCase(atom(), number(), number()) :: number()

  def areaCase(shape, dim1, dim2) when dim1 >= 0 and dim2 >= 0 do
    case shape do
      :rectangle -> dim1 * dim2
      :triangle -> dim1 * dim2 / 2.0
      :ellipse -> :math.pi() * dim1 * dim2
    end
  end
end
