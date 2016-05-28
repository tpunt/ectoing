defmodule Ectoing.Message do
  use Ecto.Schema

  schema "messages" do
    field :message_body

    belongs_to :user, Ectoing.User

    timestamps
  end
end
