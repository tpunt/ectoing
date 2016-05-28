defmodule Ectoing.Friend do
  use Ecto.Schema

  schema "friends" do
    belongs_to :user, Ectoing.User
    belongs_to :friend, Ectoing.User
    field :friend_rating, :integer

    timestamps
  end
end
