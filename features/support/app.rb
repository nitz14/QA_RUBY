class App
  attr_accessor :scenario_context

  def initialize
    @scenario_context = {}
  end

  def home_app
    HomeApp.new
  end

  def admin_app
    AdminApp.new
  end
end
