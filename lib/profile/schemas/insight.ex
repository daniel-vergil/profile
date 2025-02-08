defmodule Profile.Schemas.Insight do
  use Ecto.Schema
  import Ecto.Changeset

  schema "insights" do
    field :portfolio_views, :integer
    field :story_views, :integer
    field :email_clicks, :integer
    field :github_clicks, :integer
    field :linkedin_clicks, :integer
    field :instagram_clicks, :integer
    field :facebook_clicks, :integer
    field :threads_clicks, :integer
    field :x_clicks, :integer

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(insight, attrs) do
    insight
    |> cast(attrs, [
      :portfolio_views,
      :story_views,
      :email_clicks,
      :github_clicks,
      :linkedin_clicks,
      :instagram_clicks,
      :facebook_clicks,
      :threads_clicks,
      :x_clicks
    ])
  end
end
