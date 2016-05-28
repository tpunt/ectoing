defmodule Ectoing.Repo.Migrations.CreateMessagesTable do
  use Ecto.Migration

  def change do
    create table(:messages) do
      add :user_id, references(:users)
      add :message_body, :string

      timestamps
    end
  end
end
