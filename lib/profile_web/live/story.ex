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
  def handle_event("increment_email_click", _params, socket) do
    Insights.increment_insight_count(:email_clicks)

    {:noreply, socket}
  end

  @impl Phoenix.LiveView
  def handle_event("increment_github_click", _params, socket) do
    Insights.increment_insight_count(:github_clicks)

    {:noreply, socket}
  end

  @impl Phoenix.LiveView
  def handle_event("increment_linkedin_click", _params, socket) do
    Insights.increment_insight_count(:linkedin_clicks)

    {:noreply, socket}
  end

  @impl Phoenix.LiveView
  def handle_event("increment_instagram_click", _params, socket) do
    Insights.increment_insight_count(:instagram_clicks)

    {:noreply, socket}
  end

  @impl Phoenix.LiveView
  def handle_event("increment_facebook_click", _params, socket) do
    Insights.increment_insight_count(:facebook_clicks)

    {:noreply, socket}
  end

  @impl Phoenix.LiveView
  def handle_event("increment_threads_click", _params, socket) do
    Insights.increment_insight_count(:threads_clicks)

    {:noreply, socket}
  end

  @impl Phoenix.LiveView
  def handle_event("increment_x_click", _params, socket) do
    Insights.increment_insight_count(:x_clicks)

    {:noreply, socket}
  end

  @impl Phoenix.LiveView
  def handle_event("increment_resume_clicks", _params, socket) do
    Insights.increment_insight_count(:resume_clicks)

    {:noreply, socket}
  end

  @impl Phoenix.LiveView
  def render(assigns) do
    ~H"""
    <.flash_group flash={@flash} />
    <div class="flex flex-col w-full">
      <div class="flex items-center justify-center">
        <div
          class="relative md:h-screen h-fit bg-cover bg-center bg-no-repeat opacity-80"
          style="background-image: url('/images/story-image-1.jpg');"
        >
          <div class="absolute inset-0 bg-white bg-opacity-20"></div>
          <div class="relative text-wrap z-10 flex items-center justify-center h-full">
            <div class="flex flex-col items-center bg-black bg-opacity-70 shadow-lg p-8">
              <h1 class="text-5xl font-bold mb-4 inline-block text-transparent bg-clip-text bg-gradient-to-r from-white via-emerald-400 to-white bg-[length:200%] animate-gradient leading-relaxed py-2">My Story</h1>
              <div class="pl-8 p-4 font-bold mb-4 inline-block text-transparent bg-clip-text bg-gradient-to-r from-white via-emerald-400 to-white bg-[length:200%] animate-gradient leading-relaxed py-2">
                <p class="mb-4">
                  Coming from a humble background, a fascination with technology has always been a driving force. Growing up in the southernmost part of India, curiosity about how things work led to a deep love for mathematics, which in turn inspired the pursuit of a bachelor's degree in the subject.
                </p>
                <p class="mb-4">
                  After graduating in 2010, multiple career paths unfolded, but the thrill of problem-solving made technology the obvious choice. The journey began as a software tester, providing a strong foundation in the software development lifecycle. While gaining hands-on experience, I also pursued and earned a Master's in Software Engineering. Over the years, I honed my skills across various programming languages, tools, and technologies, contributing to the education, e-commerce, and energy sectors.
                </p>
                <p class="mb-4">
                  In 2017, I ventured to the United States, embarking on a new chapter of my journey. By end of 2021, I made my way to Canada and quickly fell in love with the breathtaking landscapes of British Columbia, where I now call home.
                </p>
                <p class="mb-4">
                  Every day brings new learning opportunities, and the incredible people met along the way have contributed greatly to both personal and professional growth. Life is guided by love and faith, with a passion for reading, coding, traveling, and hiking. Most cherished of all is the time spent with a loving family, two wonderful daughters, a supportive spouse, and a close-knit family.
                </p>
                <p class="mb-4">
                  Always open to new challenges and meaningful connections, feel free to reach out and connect!
                </p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    """
  end
end
