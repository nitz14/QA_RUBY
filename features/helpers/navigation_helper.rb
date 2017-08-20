module NavigationHelper
  def get_host_url(host)
    CONFIG['environment'][TEST_ENV][host]
  end

  def set_host(host)
    Capybara.app_host = CONFIG['environment'][TEST_ENV][host]
  end
end
World(NavigationHelper)
