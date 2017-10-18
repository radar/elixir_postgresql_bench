alias Products.Product
alias Products.Repo

%Product{on_hand: 1_000_000, permalink: "t-shirt"} |> Repo.insert!
