defmodule TaskidDemoApp.Repo do
  use Ecto.Repo,
    otp_app: :taskid_demo_app,
    adapter: Ecto.Adapters.Postgres
end
