class application
  def call(env)
    resp = Rack::Response.new
    Time.now.strfttime("%H") < 12 ? resp.write("Good Morning!") : resp.write("Good Afternoon")
    resp.finish
  end
end
