defmodule ChatterWeb.FeatureCase do
  use ExUnit.CaseTemplate

  using do
    quote do
      use Wallaby.DSL
      use ChatterWeb, :verified_routes

      @endpoint ChatterWeb.Endpoint
    end
  end

  setup tags do
    Chatter.DataCase.setup_sandbox(tags)
    {:ok, conn: Phoenix.ConnTest.build_conn()}

    metadata = Phoenix.Ecto.SQL.Sandbox.metadata_for(Chatter.Repo, self())

    {:ok, session} = Wallaby.start_session(metadata: metadata)

    {:ok, metadata: metadata, session: session}

  end
end
