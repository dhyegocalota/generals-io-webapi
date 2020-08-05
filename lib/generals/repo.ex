defmodule Generals.Repo do
  use Ecto.Repo,
    otp_app: :generals,
    adapter: Ecto.Adapters.Postgres
end
