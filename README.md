# JasonTupleList

This is a [Jason](https://hex.pm/packages/jason) specific companion.

JasonTupleList fills a very small gap between Maps and Keyword lists when
the order of the keys needs to be controlled. Most of the time this
should _not_ matter, but some APIs are the way they are.

## Installation

Sadly, at the time of this writing, the hex version of Jason (1.1.2)
does not include the required function Jason.Encode.keyword.
This package currently  depends on the github jason master branch.
his would create dependency
conflicts if you require Jason anywhere else, so the internal
dependency is set to `override: true`. This may not work in all cases.

Currently this cannot be published to hex since it depends on an unreleased
version of jason. It can currently be used as such:

```elixir
def deps do
  [
    {:jason_tuple_list, github: "danj/jason_tuple_list" }
  ]
end
```

Eventually, hopefully, the following hex instructions will apply:

The package can be
installed by adding `jason_tuple_list` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:jason_tuple_list, "~> 1.0.0"}
  ]
end
```

## Documentation

Until published to hex, run `mix docs` to generate the docs locally.

Once on hex:

[https://hexdocs.pm/jason_tuple_list](https://hexdocs.pm/jason_tuple_list)
