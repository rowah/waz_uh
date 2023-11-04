defmodule ChatterWeb.UserVisitsHomepageTest do
  use ChatterWeb.FeatureCase, async: true

  test "user visits homepage", %{session: session} do
    session
    |> visit("/")
    |> assert_has(Query.css(".title", text: "Hello and welcome to Chatter!"))
  end
end
