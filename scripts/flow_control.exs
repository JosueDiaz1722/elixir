defmodule Flow_Control do
  defmodule Post do
    defstruct id: nil, title: "", description: "", author: ""
  end
  def case do
    list = [1,2,3]
    case Enum.at(list,2) do
      1 -> "This won't print"
      3 -> "3 is a match"
      _ -> "catch all"
    end
    post1 = %Post{id: 1, title: "Title 1", author: "John"}
    post1 = %{post1 | author: "James"}
    case post1 do
      %{author: "John"} -> "Got post from John"
      %{author: "Jake"} -> "Got post from Jake"
      _ -> "Got post from #{post1.author}"
    end
  end
  def condition do
    post1 = %Post{id: 1, title: "Title 1", author: "John"}
    cond do
      post1.author == "John" -> "Editing a post from John"
      post1.author == "Jake" -> "Editing a post from John"
      true -> "This is a catch all"
    end
    list = [1,2,3]
    cond do
      hd(list) == 1 -> "Got a 1"
      true -> "Head is #{hd(list)}"
    end
  end
  def if_else do
    if true do
      "This will work"
    else
      "Else this will work"
    end
  end
end
