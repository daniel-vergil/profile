defmodule ProfileWeb.StoryLive do
  use ProfileWeb, :live_view
  import ProfileWeb.CoreComponents
  alias Profile.Insights

  @impl Phoenix.LiveView
  def mount(_params, _session, socket) do
    Insights.increment_insight_count(:story_views)

    {:ok, socket}
  end

  @impl Phoenix.LiveView
  def handle_event("increment_email_click", params, socket) do
    Insights.increment_insight_count(:email_clicks)

    {:noreply, socket}
  end

  @impl Phoenix.LiveView
  def handle_event("increment_github_click", params, socket) do
    Insights.increment_insight_count(:github_clicks)

    {:noreply, socket}
  end

  @impl Phoenix.LiveView
  def handle_event("increment_linkedin_click", params, socket) do
    Insights.increment_insight_count(:linkedin_clicks)

    {:noreply, socket}
  end

  @impl Phoenix.LiveView
  def handle_event("increment_instagram_click", params, socket) do
    Insights.increment_insight_count(:instagram_clicks)

    {:noreply, socket}
  end

  @impl Phoenix.LiveView
  def handle_event("increment_facebook_click", params, socket) do
    Insights.increment_insight_count(:facebook_clicks)

    {:noreply, socket}
  end

  @impl Phoenix.LiveView
  def handle_event("increment_threads_click", params, socket) do
    Insights.increment_insight_count(:threads_clicks)

    {:noreply, socket}
  end

  @impl Phoenix.LiveView
  def handle_event("increment_x_click", params, socket) do
    Insights.increment_insight_count(:x_clicks)

    {:noreply, socket}
  end

  @impl Phoenix.LiveView
  def render(assigns) do
    ~H"""
    <.flash_group flash={@flash} />
    <div
      id="nav-menu"
      class="flex p-4 font-mono text-lg justify-end sticky top-0 md:ml-[60%] justify-between gap-8"
    >
      <.link href={~p"/"}>PORTFOLIO</.link>
      <.link href={~p"/story"}>MY STORY</.link>
    </div>
    <div class="flex flex-col md:w-full w-[90%]">
      <div class="flex items-center justify-center">
        <div class="max-w-[50%]">
          <img src="/images/story-image.png" alt="Daniel Profile Picture" />
        </div>
        <div class="flex flex-col items-center">
          <h1 class="md:text-4xl text-2xl font-bold text-white">My Story</h1>
          <div class="pl-8 pr-4">
            <p class="text-gray-500 p-4">
              Coming from a humble background, a fascination with technology has always been a driving force. Growing up in the southernmost part of India, curiosity about how things work led to a deep love for mathematics, which in turn inspired the pursuit of a bachelor's degree in the subject.
            </p>
            <p class="text-gray-500 p-4">
              After graduating in 2010, multiple career paths unfolded, but the thrill of problem-solving made technology the obvious choice. The journey began as a software tester, providing a strong foundation in the software development lifecycle. While gaining hands-on experience, I also pursued and earned a Master's in Software Engineering. Over the years, I honed my skills across various programming languages, tools, and technologies, contributing to the education, e-commerce, and energy sectors.
            </p>
            <p class="text-gray-500 p-4">
              In 2017, I ventured to the United States, embarking on a new chapter of my journey. By end of 2021, I made my way to Canada and quickly fell in love with the breathtaking landscapes of British Columbia, where I now call home.
            </p>
            <p class="text-gray-500 p-4">
              Every day brings new learning opportunities, and the incredible people met along the way have contributed greatly to both personal and professional growth. Life is guided by love and faith, with a passion for reading, coding, traveling, and hiking. Most cherished of all is the time spent with a loving family—two wonderful daughters, a supportive spouse, and a close-knit family.
            </p>
            <p class="text-gray-500 p-4">
              Always open to new challenges and meaningful connections, feel free to reach out and connect!
            </p>
          </div>
        </div>
      </div>
    </div>
    <div
      id="footer"
      class="flex flex-wrap p-8 md:gap-12 gap-2 font-mono text-lg justify-end bottom-0 justify-between"
    >
      <.link href="mailto:daniel.vergil2711@gmail.com" phx-click="increment_email_click">Email</.link>
      <.link
        href="https://github.com/daniel-vergil"
        target="_blank"
        phx-click="increment_github_click"
      >
        GitHub
      </.link>
      <.link
        href="https://www.linkedin.com/in/daniel-vergil-stephen/"
        target="_blank"
        phx-click="increment_linkedin_click"
      >
        LinkedIn
      </.link>
      <.link
        href="https://www.instagram.com/danielvergilstephen"
        target="_blank"
        phx-click="increment_instagram_click"
      >
        Instagram
      </.link>
      <.link
        href="https://www.facebook.com/daniel.vergil"
        target="_blank"
        phx-click="increment_facebook_click"
      >
        Facebook
      </.link>
      <.link
        href="https://www.threads.net/@danielvergilstephen"
        target="_blank"
        phx-click="increment_threads_click"
      >
        Threads
      </.link>
      <.link href="https://x.com/daniel_vergil" target="_blank" phx-click="increment_x_click">
        X
      </.link>
    </div>
    """
  end
end
