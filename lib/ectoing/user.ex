defmodule Ectoing.User do
  use Ecto.Schema

  schema "users" do
    field :firstname
    field :surname
    field :username

    has_many :friends_with, Ectoing.Friend
    has_many :friends_of, Ectoing.Friend
    has_many :messages, Ectoing.Message

    timestamps
  end
end
