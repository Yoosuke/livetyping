defmodule Livetyping.Presence do
  use Phoenix.Presence, otp_app: :livetyping, pubsub_server: Livetyping.PubSub
end
