defmodule Beer.Accounts.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field :beer_capacity, :integer
    field :name, :string
    field :uid, :integer

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:uid, :name, :beer_capacity])
    |> validate_required([:uid, :name, :beer_capacity])
  end
end
