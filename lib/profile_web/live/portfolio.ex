defmodule ProfileWeb.PortfolioLive do
  use ProfileWeb, :live_view
  import ProfileWeb.CoreComponents
  alias ElixirLS.LanguageServer.Providers.CodeLens.Test
  alias Profile.Insights

  @impl Phoenix.LiveView
  def mount(_params, _session, socket) do
    Insights.increment_insight_count(:portfolio_views)

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
    <div class="flex flex-col opacity-80 bg-repeat-round w-full"
    style="background-image: url('/images/portfolio-background.gif');">
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
        <div class="card md:w-[30%] md:mb-0 mb-4">
          <img
            src="https://www.generac.com/globalassets/shared/logos/generac-blue-logo.png"
            alt="Generac Grid Services Logo"
            class="logo"
          />
          <div class="company">Generac Grid Services</div>
          <div class="role">Software Development</div>
          <div class="role">Engineer in Test III</div>
          <div class="date">Nov 2019 - Present</div>
          <div class="description whitespace-pre-line">
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
            TypeScript, JavaScript, Elixir, Cypress, Postman, ExUnit, Livebook, Phoenix, PhoenixTest, GraphQL, PostgreSQL, GitHub, Docker, Datadog, GitHub Actions, AWS Copilot CLI, AWS ECS, AWS CloudWatch, JIRA, Zephyr
          </div>
        </div>
        <!-- Card 2 -->
        <div class="card md:w-[30%] md:mb-0 mb-4">
          <img
            src="https://www.stamps.com/wp-content/uploads/2025/01/Stamps-Primary-Lockup-Red-RGB.svg"
            alt="Stamps.com Logo"
            class="logo"
          />
          <div class="company">Stamps.com</div>
          <div class="role">Senior QA Automation</div>
          <div class="role">Engineer</div>
          <div class="date">Sep 2019 - Nov 2021</div>
          <div class="description whitespace-pre-line">
           <ul>
              <li>Developed custom test automation frameworks for web and API testing using <b>Webdriver.io (JavaScript)</b> and <b>Watir (Ruby)</b>.</li>
              <li>Configured and optimized CI/CD pipelines using <b>Jenkins</b> and <b>Groovy-based Job DSLs</b>.</li>
              <li>Automated windows applications using AutoIT, executed cross browser tests using saucelabs and reported status to testrail</li>
              <li>Managed <b>AWS infrastructure</b>, including EC2 instances, AMI creation, and Auto Scaling Groups.</li>
              <li>Spearheaded <b>Work-Ahead automation</b>, reducing manual testing effort by <b>75%</b>.</li>
              <li>Developed <b>shell scripts</b> to kick off Jenkins builds remotely.</li>
              <li>Implemented and managed <b>GitHub webhooks</b> to automate and streamline build processes.</li>
            </ul>
          </div>
          <div class="tech-stack">
            <strong>Tech Stack:</strong>
            JavaScript, Ruby, Gherkin, WebdriverIO, Watir, SOAP, GitHub, Jenkins, Job DSLs, SQL, PostgreSQL, Splunk, GitHub, AWS EC2, AWS S3, AWS AMIs, AWS Load Balancers, AWS Auto Scaling Groups, AWS Parameter Store, JIRA, TestRail, AutoIT, SauceLabs
          </div>
        </div>
        <!-- Card 3 -->
        <div class="card md:w-[30%] md:mb-0 mb-4">
          <img
            src="https://www.wipro.com/content/dam/wipro/social-icons/wipro_new_logo.svg"
            alt="Wipro Limited Logo"
            class="logo"
          />
          <div class="company">Wipro Limited</div>
          <div class="role">Senior Project Engineer</div>
          <div class="date">Sep 2010 - Aug 2019</div>
          <div class="description whitespace-pre-line">
            <ul>
              <li>Led a globally distributed test team, ensuring a 90%+ success rate in meeting production milestones with high-quality deliverables.</li>
              <li>Automated functional, regression, and accessibility tests using Selenium WebDriver, TestNG, Java, and Axe.</li>
              <li>Developed API automation using Postman/Newman and validated data integrity on PostgreSQL/MySQL.</li>
              <li>Integrated test automation into CI/CD pipelines using Jenkins and CircleCI for seamless deployments.</li>
              <li>Ensured WCAG 2.0 compliance by testing with JAWS and automating accessibility checks.</li>
              <li>Led test case creation, execution, and reporting, leveraging tools like HP QC and ALM.</li>
            </ul>
          </div>
          <div class="tech-stack">
            <strong>Tech Stack:</strong> Java, JavaScript, Selenium, Postman, Newman, REST, GitHub, GitLab, CircleCI, Jenkins, SQL, Sumo Logic, Axe, JAWS, HP QC, HP ALM
          </div>
        </div>
      </div>
    </div>
    """
  end
end
