defmodule Products.Repo.Migrations.CreateProducts do
  use Ecto.Migration

  def change do
    create table(:products) do
      add :on_hand, :integer
      add :permalink, :string
    end

    create constraint("products", :on_hand_must_be_positive, check: "on_hand > 0")
  end
end
