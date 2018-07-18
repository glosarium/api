defmodule Glosarium.Accounts.User do
  use Ecto.Schema
  import Ecto.Changeset


  schema "users" do
    field :bio, :string
    field :email, :string
    field :name, :string
    field :password, :string

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:name, :bio, :email, :password])
    |> validate_required([:name, :bio, :email, :password])
    |> validate_length(:name, min: 5)
    |> validate_length(:name, max: 100)
  end
end
