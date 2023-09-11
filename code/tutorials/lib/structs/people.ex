defmodule Tutorials.Structs.People do
  defstruct name: "", country: ""
  alias Tutorials.Structs.People

  @type t :: %People{
    name: String.t(),
    country: String.t()
  }

  @spec all :: [t()]
  def all() do
    [
      %People{name: "Jeff", country: "USA"},
      %People{name: "Juan", country: "Ecuador"},
      %People{name: "Seth", country: "Australia"},
      %People{name: "Maria", country: "Honduras"},
      %People{name: "Mario", country: "Mexico"},
      %People{name: "Han", country: "Japon"}
    ]
  end

  @spec print_names([t()]) :: :ok
  def print_names(people) do
    people
    |> Enum.each( fn %{name: name} -> IO.puts(name) end)
  end

  @spec filter_by_country([t()], String.t()) :: [t()]
  def filter_by_country(people, country) do
    people
    |> Enum.filter(fn %{country: country_name} -> country_name == country end)
  end
  
  @spec in_country_starting_with_a([t()]) :: [t()]
  def in_country_starting_with_a(people) do
    people
    |> Enum.filter(fn %{country: country} -> String.starts_with?(country, "A") end)
  end

  def sort_by_country_length(people) do
     people
     |> Enum.sort(fn x, y -> String.length(x.country) < String.length(y.country) end)
  end

  def name_country_list(people) do
    people
    |> Enum.reduce([], fn person, acc -> [[person.name, person.country] | acc] end) 
  end

  def country_name_keyword_list(people) do
    people
    |> Enum.reduce([], fn person, acc -> [{String.to_atom(person.name), person.country} | acc] end) 
  end

  def all_names(people) do
    for %{name: name} <- people, do: name
  end
  
end
