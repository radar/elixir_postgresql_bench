defmodule Products.Product do
  use Ecto.Schema

  schema "products" do
    field :on_hand, :integer
    field :permalink, :string
  end
end
