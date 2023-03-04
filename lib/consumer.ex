defmodule CBot.CBotConsumer do
  use Nostrum.Consumer

  alias Nostrum.Api

  def start_link do
    Consumer.start_link(__MODULE__)
  end

  def handle_event({:MESSAGE_CREATE, msg, _ws_state }) do
    case msg.content do
      "!ping" ->
        Api.create_message(msg.chanel_id, "Pong!")
      _ ->
        IO.puts("Saw msg: #{msg.content}")
        :ignore
    end
  end

  # Required since we aren't handling every event type
  def handle_event(event) do
    IO.inspect(event)

    :noop
  end
end

