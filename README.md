# JasonTupleList

This is a [Jason](https://hex.pm/packages/jason) specific companion.

JasonTupleList fills a very small gap between Maps and Keyword lists when
the order of the keys needs to be controlled. Most of the time this
should _not_ matter, but some APIs are the way they are.

## Installation

The package can be
installed by adding `jason_tuple_list` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:jason_tuple_list, "~> 0.1.0"}
  ]
end
```

Sadly, at the time of this writing, the hex version of Jason (1.1.2)
does not include the required function Jason.Encode.keyword.
This package depends on github `master`. This would create dependency
conflicts if you require Jason anywhere else, so the internal
dependency is set to `override: true`. This may not work in all cases.

## Documentation

[https://hexdocs.pm/jason_tuple_list](https://hexdocs.pm/jason_tuple_list)
