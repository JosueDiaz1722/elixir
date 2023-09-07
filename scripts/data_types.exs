defmodule User do
  defstruct username: "", email: "", age: nil
end

defmodule Data_Types do
  def atom do
    {:error, reason} = {:error, "file not found"}
    reason
    {:ok, msg} = {:ok, "status 200 ok"}
    msg
  end
  def string do
    name = "Test"
    is_binary(name)
    msg = "Hello " <> name
    msg
    "Hello " <> name = msg
    name
    <<head, rest::binary>> = name
    head
    head == ?T
    <<"T", rest::binary>> = name
    rest
    <<"Te", rest::binary>> = name
    rest
    <<head::binary-size(2), rest::binary>> = name
    head
  end
  def char_list do
    chars = 'Elixir'
    'Hello ' ++ chars
    is_list(chars)
  end
  def process do
    my_pid = self()
    my_pid
  end
  def list do
    # list in elixir are singled link lists
    list = ["a","b","c"]
    # list[0] will error because list are linked lists
    Enum.at(list, 0)
    [first, second, third] = list
    second
    [_,_,third] = list
    third
    hd(list)
    # a
    tl(list)
    # [b,c]
    [ h | t ] = list
    h
    t
  end
  def tuple do
    {a,b} = {1,2}
    a
    {:reply, msg, state} = {:reply, "Message Sent", ["Dan","John","Jake"]}
    state
  end
  def keyword_list do
    data = [a: 1, b: 2]
    data
    [{:a, 1}] = [a: 1]
    data[:a]
  end
  def maps do
    # maps are like dictionaries
    my_map = %{a: 1, b: 2, c: 3}
    my_map
    %{a: first, b: second, c: third} = my_map
    first
    %{b: second} = my_map
    second
    my_map.a
    map2 = %{"a" => 1, "b" => 2, "c" => 3}
    %{"c" => c} = map2
    c
    map2 = %{map2 | "c" => 4}
    my_map = %{my_map | c: 4}
  end
  def struct do
    user1 = %User{username: "Test", age: "21", email: "test@gmail.com"}
    %{username: username} = user1
    username
    user1 = %{user1 | age: "24"}
  end
end
