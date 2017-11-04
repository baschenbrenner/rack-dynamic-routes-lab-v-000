require 'pry'
class Application

  def call(env)
    req = Rack::Request.new(env)
    resp = Rack::Response.new

    if req.path.include? ("/items/")
      
      search_item=req.path.split("items/").last
      binding.pry
    else
      resp.write "Route not found"
      resp.status = 404
    end

    resp.finish
  end


end
