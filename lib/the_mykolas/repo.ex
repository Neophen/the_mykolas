defmodule TheMykolas.Repo do
  use Ecto.Repo,
    otp_app: :the_mykolas,
    adapter: Ecto.Adapters.Postgres
end
