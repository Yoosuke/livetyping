defmodule LivetypingWeb.Util.ErrorCounter do
  use Agent

  def start_link(initial_value) do
    {status, pid} = Agent.start_link(fn -> initial_value end, name: DeploySampleWeb.Util.ErrorCounter)
    case status do
      :ok -> pid
      :error -> "error"
    end
  end

  def value do
    Agent.get(DeploySampleWeb.Util.ErrorCounter, & &1)
  end

  def increment do
    Agent.update(DeploySampleWeb.Util.ErrorCounter, &(&1 + 1))
  end

  def stop(pid) do
    Agent.stop(pid)
  end

  end
