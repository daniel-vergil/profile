defmodule ProfileWeb.PortfolioLive do
  use ProfileWeb, :live_view
  import ProfileWeb.CoreComponents

  @impl Phoenix.LiveView
  def mount(_params, _session, socket) do
    {:ok, socket}
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
    <div class="flex flex-col md:w-full w-[90%] mt-48">
      <div class="flex items-center justify-center">
        <div class="flex flex-col items-center">
          <h1 class="md:text-4xl text-2xl font-bold text-white pt-8">Hi!</h1>
          <h1 class="md:text-4xl text-2xl font-bold text-white">I'm Daniel Vergil Stephen</h1>
          <h3 class="text-gray-500 p-4">
            Software Development Engineer in Test | Aspiring Full-Stack Developer
          </h3>
        </div>

        <div class="w-[50%]">
          <img src="/images/daniel-image.svg" alt="Daniel Profile Picture" />
        </div>
      </div>

      <div class="experience-container justify-between w-[100%] md:p-0 p-16">
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
            - Developed and maintained full-stack applications using Elixir and Phoenix.<br />
            - Designed and implemented test automation strategies for UI, API, and scale tests.<br />
            - Conducted end-to-end IoT device testing with cloud-based platforms.<br />
            - Debugged and enhanced product codebase in Elixir and Elm.<br />
            - Managed backend deployments on Ubuntu servers.
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
    <div
      id="footer"
      class="flex flex-wrap p-8 md:gap-12 gap-2 font-mono text-lg justify-end bottom-0 justify-between"
    >
      <.link href="mailto:daniel.vergil2711@gmail.com">Email</.link>
      <.link href="https://github.com/daniel-vergil" target="_blank">GitHub</.link>
      <.link href="https://www.linkedin.com/in/daniel-vergil-stephen/" target="_blank">
        LinkedIn
      </.link>
      <.link href="https://www.instagram.com/danielvergilstephen" target="_blank">Instagram</.link>
      <.link href="https://www.facebook.com/daniel.vergil" target="_blank">Facebook</.link>
      <.link href="https://www.threads.net/@danielvergilstephen" target="_blank">Threads</.link>
      <.link href="https://x.com/daniel_vergil" target="_blank">X</.link>
    </div>
    """
  end
end
