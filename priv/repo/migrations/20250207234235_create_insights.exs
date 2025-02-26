defmodule Profile.Repo.Migrations.CreateInsights do
  use Ecto.Migration

  def up do
    create table(:insights) do
      add :portfolio_views, :integer
      add :story_views, :integer
      add :email_clicks, :integer
      add :github_clicks, :integer
      add :linkedin_clicks, :integer
      add :instagram_clicks, :integer
      add :facebook_clicks, :integer
      add :threads_clicks, :integer
      add :x_clicks, :integer
      add :resume_clicks, :integer

      timestamps(type: :utc_datetime)
    end

    execute "INSERT INTO insights (portfolio_views, story_views, email_clicks, github_clicks, linkedin_clicks, instagram_clicks, facebook_clicks, threads_clicks, x_clicks, resume_clicks, inserted_at, updated_at) VALUES (0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NOW(), NOW())"
  end

  def down do
    drop table(:insights)
  end
end
