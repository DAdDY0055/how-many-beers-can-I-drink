defmodule Beer.Repo do
  use Ecto.Repo,
    otp_app: :beer,
    adapter: Ecto.Adapters.Postgres
end
