defmodule Ectoing.Repo.Migrations.CreateUsersTable do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :firstname, :string
      add :surname, :string
      add :username, :string

      timestamps
    end
  end
end
