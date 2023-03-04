defmodule CBot.Main do
  def init do
    CBot.CBotSupervisor.start_link([])
  end
end
