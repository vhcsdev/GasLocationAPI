defmodule GasLocationApi.Repo.Migrations.AddUsersTable do
  use Ecto.Migration

  def change do
    create table("users") do
      add :first_name, :string, null: false
      add :last_name, :string, null: false
      add :birthdate, :string, null: false
      add :email, :string, null: false
      add :password_hash, :string, null: false

      timestamps()
    end
  end
end
