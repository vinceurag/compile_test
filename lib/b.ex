defmodule PrinterB do
  def __before_compile__(_env) do
    IO.inspect("Compiling B")
  end
end

defmodule CompileTest.B do
  @after_compile __MODULE__
  @before_compile PrinterB

  def __after_compile__(_env, _bytecode) do
    IO.inspect("Compiled B")
  end

  def __before_compile__(_env) do
    IO.inspect("Compiling B")
  end

  def add(a, b) do
    Process.sleep(5000)
    a + b
  end
end
