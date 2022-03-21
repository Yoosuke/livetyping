defmodule LivetypingWeb.Util.Counter do
use Agent

def start_link(initial_value) do
  {status, pid} = Agent.start_link(fn -> initial_value end, name: __MODULE__)
  case status do
    :ok -> pid
    :error -> "error"
  end
end

def value do
  Agent.get(__MODULE__, & &1)
end

def increment do
  Agent.update(__MODULE__, &(&1 + 1))
end

def stop(pid) do
  Agent.stop(pid)
end

end
