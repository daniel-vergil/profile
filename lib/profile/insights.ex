defmodule Profile.Insights do
  @moduledoc """
  This module functions as the Insights context.
  """
  import Ecto.Query
  alias Profile.Repo
  alias Profile.Schemas.Insight

  def get_insights(column) do
    Repo.one(from i in Insight, select: field(i, ^column))
  end

  def increment_insight_count(column) do
    from(i in Insight, update: [set: [{^column, fragment("? + 1", field(i, ^column))}]])
    |> Repo.update_all([])
  end

  def reset_insights() do
    Repo.update_all(Insight,
      set: [
        portfolio_views: 0,
        story_views: 0,
        email_clicks: 0,
        github_clicks: 0,
        linkedin_clicks: 0,
        instagram_clicks: 0,
        facebook_clicks: 0,
        threads_clicks: 0,
        x_clicks: 0,
        resume_clicks: 0
      ]
    )
  end
end
