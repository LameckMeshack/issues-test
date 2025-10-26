defmodule SpawnBasic do
  def greet do
    receive do
      {sender, msg} -> send(sender, {:ok, "Hello, #{msg}"})
    end
  end
end
  
  receive do
    {:ok, message} -> IO.puts message
  end

