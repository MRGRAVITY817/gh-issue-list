defmodule CliTest do
  use ExUnit.Case
  doctest Issues

  import Issues.CLI, only: [parse_args: 1, sort_into_descending_order: 1]

  test "If the options parses to -h or --help, then it would return :help." do
    assert parse_args(["-h", "anything"]) == :help
    assert parse_args(["--help", "anything"]) == :help
  end

  test "Returns 3 values when 3 values are sent." do
    assert parse_args(["user", "project", "99"]) == {"user", "project", 99}
  end

  test "When 2 values sent, use default count." do
    assert parse_args(["user", "project"]) == {"user", "project", 4}
  end

  test "Sorting descending order should work" do
    result = sort_into_descending_order(fake_created_at_list(["c", "a", "b"]))
    issues = for issue <- result, do: Map.get(issue, "created_at")
    assert issues == ~w{c b a}
  end

  defp fake_created_at_list(values) do
    for value <- values,
        do: %{"created_at" => value, "other_data" => "xxx"}
  end
end
