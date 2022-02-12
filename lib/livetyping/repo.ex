defmodule Livetyping.Repo do
  use Ecto.Repo,
    otp_app: :livetyping,
    adapter: Ecto.Adapters.Postgres
end
