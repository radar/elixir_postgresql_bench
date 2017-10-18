defmodule DecrementBench do
  use Benchfella

  import Mix.Ecto
  import Ecto.Query

  alias Products.Product
  alias Products.Repo

  setup_all do
    ensure_started(Products.Repo, [])
    Products.Product |> Repo.delete_all
    %Product{on_hand: 1_000_000, permalink: "t-shirt"} |> Repo.insert!

    {:ok, true}
  end

  bench "decrement on_hand" do
    from(p in Product, where: p.permalink == "t-shirt") |> Repo.update_all(inc: [on_hand: -1])
  end

  teardown_all true do
    product = from(p in Product, where: p.permalink == "t-shirt", limit: 1) |> Repo.one
    IO.puts product.on_hand
    {:ok, true}
  end
end
