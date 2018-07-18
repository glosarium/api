defmodule Glosarium.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    has_many :words, Word
    field :email, :string
    field :name, :string
    field :password, :string

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:name, :email, :password])
    |> validate_required([:name, :email, :password])
    |> validate_length(:name, min: 5)
    |> validate_format(:email, ~r/@/)    
  end

  def registration_changeset do
    []
  end
end
