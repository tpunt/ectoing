defmodule Ectoing.Repo.Migrations.CreateFriendsTable do
  use Ecto.Migration

  def change do
    create table(:friends) do
      add :user_id, references(:users)
      add :friend_id, references(:users)
      add :friend_rating, :integer

      timestamps
    end
  end
end
