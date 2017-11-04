class Application

  def call(env)
    req = Rack::Request.new(env)
    resp = Rack::Response.new
    binding.pry
    
  end


end
