defmodule ProfileWeb.PortfolioLive do
  use ProfileWeb, :live_view
  import ProfileWeb.CoreComponents
  alias Profile.Insights

  @impl Phoenix.LiveView
  def mount(_params, _session, socket) do
    Insights.increment_insight_count(:portfolio_views)

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
    <div class="flex flex-col opacity-80 bg-repeat-round w-full"
    style="background-image: url('https://media3.giphy.com/media/v1.Y2lkPTc5MGI3NjExZHJ5NHM1Y3g2d2FlOTRnNTl0M3ppbHZwMzJpMWZzOGx4cjBya2RvbyZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/TxVVB6PfWMjE4/giphy.gif');">
      <div class="flex items-center justify-center">
        <div class="flex flex-col items-center">
          <h1 class="md:text-5xl text-2xl font-bold text-white pt-8">Hi!</h1>
          <h1 class="md:text-5xl text-2xl font-bold text-white">I'm Daniel Vergil Stephen</h1>
          <h3 class="text-orange-500 text-xl p-4 md:w-full w-[90%] justify-center text-center">
            Software Development Engineer in Test
          </h3>
        </div>

        <div class="hidden md:block max-w-[50%]">
          <img src="/images/daniel-image.svg" alt="Daniel Profile Picture" />
        </div>
      </div>

      <div class="experience-container justify-between w-[100%] md:p-6 p-16 md:border-t-2 border-0 border-red-400">
        <!-- Card 1 -->
        <div class="card">
          <img
            src="https://www.generac.com/globalassets/shared/logos/generac-blue-logo.png"
            alt="Generac Grid Services Logo"
            class="logo"
          />
          <div class="company">Generac Grid Services</div>
          <div class="role">Software Development</div>
          <div class="role">Engineer in Test III</div>
          <div class="date">Nov 2019 - Present</div>
          <div class="description">
            <ul>
              <li>Architected and implemented robust test automation strategies for UI, API, and scale testing using <b>Cypress, Postman, Livebook, PhoenixTest, and ExUnit</b>.</li>
              <li>Led end-to-end <b>IoT device testing</b>, ensuring seamless cloud integration and high system reliability.</li>
              <li>Developed and maintained <b>full-stack</b> applications in <b>Elixir and Phoenix</b>, optimizing performance and scalability.</li>
              <li><b>Managed backend deployments</b> on Ubuntu servers, streamlining infrastructure and validation processes.</li>
              <li>Optimized Cypress test framework, reducing flakiness, adding reusable helper functions, and improving execution speed.</li>
              <li>Reduced regression cycles by <b>50%</b> by automating feature and <b>scale tests</b>, accelerating release timelines.</li>
              <li><b>Built automation tools</b> to eliminate repetitive manual QA efforts, driving efficiency and test coverage.</li>
            </ul>
          </div>
          <div class="tech-stack">
            <strong>Tech Stack:</strong>
            TypeScript, JavaScript, Elixir, Cypress, Postman, Livebook, Phoenix, Docker, GitHub Actions
          </div>
        </div>
        <!-- Card 2 -->
        <div class="card">
          <img
            src="https://www.stamps.com/wp-content/uploads/2025/01/Stamps-Primary-Lockup-Red-RGB.svg"
            alt="Stamps.com Logo"
            class="logo"
          />
          <div class="company">Stamps.com</div>
          <div class="role">Senior QA Automation</div>
          <div class="role">Engineer</div>
          <div class="date">Sep 2019 - Nov 2021</div>
          <div class="description">
            - Designed and developed test automation frameworks for web and API testing.<br />
            - Implemented CI/CD pipelines using Jenkins and GitHub Actions.<br />
            - Automated AWS deployment processes and maintained test coverage.<br />
            - Led automation efforts, reducing manual QA work by 75%.
          </div>
          <div class="tech-stack">
            <strong>Tech Stack:</strong>
            Webdriver.io, Selenium, Jenkins, AWS S3, GitHub Actions, PostgreSQL
          </div>
        </div>
        <!-- Card 3 -->
        <div class="card">
          <img
            src="https://www.wipro.com/content/dam/wipro/social-icons/wipro_new_logo.svg"
            alt="Wipro Limited Logo"
            class="logo"
          />
          <div class="company">Wipro Limited</div>
          <div class="role">Senior Project Engineer</div>
          <div class="date">Jan 2011 - Aug 2019</div>
          <div class="description">
            - Led test automation initiatives for multiple projects, reducing execution time by 60%.<br />
            - Developed Selenium-based automation frameworks and executed API testing.<br />
            - Designed and implemented CI/CD pipelines with Jenkins and CircleCI.<br />
            - Performed data-centric testing on PostgreSQL and MySQL.
          </div>
          <div class="tech-stack">
            <strong>Tech Stack:</strong> Selenium, CircleCI, Jenkins, PostgreSQL, MySQL, Java, Python
          </div>
        </div>
      </div>
    </div>
    """
  end
end
