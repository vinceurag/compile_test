defmodule PrinterA do
  def __before_compile__(_env) do
    IO.inspect("Compiling A")
  end
end

defmodule CompileTest.A do
  @sum CompileTest.B.add(1, 2)

  @after_compile __MODULE__
  @before_compile PrinterA

  def __after_compile__(_env, _bytecode) do
    IO.inspect("Compiled A")
  end

  def sum() do
    @sum
  end
end
