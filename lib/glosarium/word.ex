defmodule Glosarium.Word do
  use Ecto.Schema
  import Ecto.Changeset


  schema "words" do
    belongs_to :user, User
    field :local, :string
    field :origin, :string

    timestamps()
  end

  @doc false
  def changeset(word, attrs) do
    word
    |> cast(attrs, [:origin, :local])
    |> validate_required([:origin, :local])
  end
end
