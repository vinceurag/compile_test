defmodule CompileTestTest do
  use ExUnit.Case
  doctest CompileTest

  test "greets the world" do
    assert CompileTest.hello() == :world
  end
end
