class Application
  def call(env)
    resp = Rack::Response.new
    t = Time.now
    z = Time.now.strftime("%H") < 12 
    resp.write(z)
    #Time.now.strftime("%H") < 12 ? resp.write("Good Morning!") : resp.write("Good Afternoon")
    resp.finish
  end
end
