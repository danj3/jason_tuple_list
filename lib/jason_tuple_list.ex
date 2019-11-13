defmodule JasonTupleList do
  @moduledoc """
  Not quite a Map, not quite a Keyword list, a TupleList is not
  for atoms, but for string/value pairs. The implementation is trivial
  but this is the simplest way to get Jason to output a json map that
  has the same ordering as the input list.

  A warning: it is not valid to have a json map with duplicate
  keys. This implementation does not check or inhibit the creation
  of such a degenerate map, it is your responsibility.

  This requires a post 1.1.2 release that includes Encode.keyword
  """

  defstruct [:value]

  def new(value), do: %__MODULE__{value: value}

  defimpl Jason.Encoder do
    def encode(%{value: value}, opts) do
      Jason.Encode.keyword(value, opts)
    end
  end
end
