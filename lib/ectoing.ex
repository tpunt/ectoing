defmodule Ectoing do
  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    children = [
      supervisor(Ectoing.Repo, [])
    ]

    opts = [strategy: :one_for_one, name: Ectoing.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
