defmodule AtmaSystem.Repo do
  use Ecto.Repo,
    otp_app: :atma_system,
    adapter: Ecto.Adapters.Postgres
end
